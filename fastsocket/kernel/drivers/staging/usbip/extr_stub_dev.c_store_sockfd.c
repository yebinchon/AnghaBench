
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; int lock; struct socket* tcp_socket; } ;
struct stub_device {TYPE_1__ ud; } ;
struct socket {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENODEV ;
 int SDEV_EVENT_DOWN ;
 scalar_t__ SDEV_ST_AVAILABLE ;
 scalar_t__ SDEV_ST_USED ;
 int dev_err (struct device*,char*) ;
 struct stub_device* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int setkeepalive (struct socket*) ;
 int setnodelay (struct socket*) ;
 int setreuse (struct socket*) ;
 struct socket* sockfd_to_socket (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sscanf (char const*,char*,int*) ;
 int usbip_event_add (TYPE_1__*,int ) ;
 int usbip_start_threads (TYPE_1__*) ;

__attribute__((used)) static ssize_t store_sockfd(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct stub_device *sdev = dev_get_drvdata(dev);
 int sockfd = 0;
 struct socket *socket;

 if (!sdev) {
  dev_err(dev, "sdev is null\n");
  return -ENODEV;
 }

 sscanf(buf, "%d", &sockfd);

 if (sockfd != -1) {
  dev_info(dev, "stub up\n");

  spin_lock(&sdev->ud.lock);

  if (sdev->ud.status != SDEV_ST_AVAILABLE) {
   dev_err(dev, "not ready\n");
   spin_unlock(&sdev->ud.lock);
   return -EINVAL;
  }

  socket = sockfd_to_socket(sockfd);
  if (!socket) {
   spin_unlock(&sdev->ud.lock);
   return -EINVAL;
  }







  sdev->ud.tcp_socket = socket;

  spin_unlock(&sdev->ud.lock);

  usbip_start_threads(&sdev->ud);

  spin_lock(&sdev->ud.lock);
  sdev->ud.status = SDEV_ST_USED;
  spin_unlock(&sdev->ud.lock);

 } else {
  dev_info(dev, "stub down\n");

  spin_lock(&sdev->ud.lock);
  if (sdev->ud.status != SDEV_ST_USED) {
   spin_unlock(&sdev->ud.lock);
   return -EINVAL;
  }
  spin_unlock(&sdev->ud.lock);

  usbip_event_add(&sdev->ud, SDEV_EVENT_DOWN);
 }

 return count;
}
