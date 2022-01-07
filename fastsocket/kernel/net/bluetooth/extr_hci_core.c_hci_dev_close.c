
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
typedef int __u16 ;


 int ENODEV ;
 int hci_dev_do_close (struct hci_dev*) ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_put (struct hci_dev*) ;

int hci_dev_close(__u16 dev)
{
 struct hci_dev *hdev;
 int err;

 if (!(hdev = hci_dev_get(dev)))
  return -ENODEV;
 err = hci_dev_do_close(hdev);
 hci_dev_put(hdev);
 return err;
}
