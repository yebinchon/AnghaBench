
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int ssp_mode; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_ev_remote_host_features {int* features; int bdaddr; } ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct inquiry_entry* hci_inquiry_cache_lookup (struct hci_dev*,int *) ;

__attribute__((used)) static inline void hci_remote_host_features_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_remote_host_features *ev = (void *) skb->data;
 struct inquiry_entry *ie;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 if ((ie = hci_inquiry_cache_lookup(hdev, &ev->bdaddr)))
  ie->data.ssp_mode = (ev->features[0] & 0x01);

 hci_dev_unlock(hdev);
}
