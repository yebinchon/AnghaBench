
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; int * channel; scalar_t__ mesh_id_len; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int leave_mesh; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int rdev_leave_mesh (struct cfg80211_registered_device*,struct net_device*) ;

__attribute__((used)) static int __cfg80211_leave_mesh(struct cfg80211_registered_device *rdev,
     struct net_device *dev)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 ASSERT_WDEV_LOCK(wdev);

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_MESH_POINT)
  return -EOPNOTSUPP;

 if (!rdev->ops->leave_mesh)
  return -EOPNOTSUPP;

 if (!wdev->mesh_id_len)
  return -ENOTCONN;

 err = rdev_leave_mesh(rdev, dev);
 if (!err) {
  wdev->mesh_id_len = 0;
  wdev->channel = ((void*)0);
 }

 return err;
}
