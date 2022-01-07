
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dev; int driver_init; } ;


 int put_device (int *) ;
 int skb_queue_purge (int *) ;

void hci_free_dev(struct hci_dev *hdev)
{
 skb_queue_purge(&hdev->driver_init);


 put_device(&hdev->dev);
}
