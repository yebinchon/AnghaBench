
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dev {int dst; int src; } ;
struct hci_dev {int dummy; } ;
struct device {int dummy; } ;
struct hci_conn {struct device dev; } ;


 int ACL_LINK ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_put (struct hci_dev*) ;
 struct hci_dev* hci_get_route (int *,int *) ;

__attribute__((used)) static struct device *rfcomm_get_device(struct rfcomm_dev *dev)
{
 struct hci_dev *hdev;
 struct hci_conn *conn;

 hdev = hci_get_route(&dev->dst, &dev->src);
 if (!hdev)
  return ((void*)0);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &dev->dst);

 hci_dev_put(hdev);

 return conn ? &conn->dev : ((void*)0);
}
