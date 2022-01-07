
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int driver_init; } ;


 int GFP_KERNEL ;
 struct hci_dev* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

struct hci_dev *hci_alloc_dev(void)
{
 struct hci_dev *hdev;

 hdev = kzalloc(sizeof(struct hci_dev), GFP_KERNEL);
 if (!hdev)
  return ((void*)0);

 skb_queue_head_init(&hdev->driver_init);

 return hdev;
}
