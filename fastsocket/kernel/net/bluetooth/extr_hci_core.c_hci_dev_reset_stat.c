
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev_stats {int dummy; } ;
struct hci_dev {int stat; } ;
typedef int __u16 ;


 int ENODEV ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_put (struct hci_dev*) ;
 int memset (int *,int ,int) ;

int hci_dev_reset_stat(__u16 dev)
{
 struct hci_dev *hdev;
 int ret = 0;

 if (!(hdev = hci_dev_get(dev)))
  return -ENODEV;

 memset(&hdev->stat, 0, sizeof(struct hci_dev_stats));

 hci_dev_put(hdev);

 return ret;
}
