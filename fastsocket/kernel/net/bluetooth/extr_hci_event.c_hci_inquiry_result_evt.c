
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct inquiry_info {int clock_offset; int dev_class; int pscan_mode; int pscan_period_mode; int pscan_rep_mode; int bdaddr; } ;
struct inquiry_data {int rssi; int ssp_mode; int clock_offset; int dev_class; int pscan_mode; int pscan_period_mode; int pscan_rep_mode; int bdaddr; } ;
struct hci_dev {int name; } ;
typedef int __u8 ;


 int BT_DBG (char*,int ,int) ;
 int bacpy (int *,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_inquiry_cache_update (struct hci_dev*,struct inquiry_data*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static inline void hci_inquiry_result_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct inquiry_data data;
 struct inquiry_info *info = (void *) (skb->data + 1);
 int num_rsp = *((__u8 *) skb->data);

 BT_DBG("%s num_rsp %d", hdev->name, num_rsp);

 if (!num_rsp)
  return;

 hci_dev_lock(hdev);

 for (; num_rsp; num_rsp--) {
  bacpy(&data.bdaddr, &info->bdaddr);
  data.pscan_rep_mode = info->pscan_rep_mode;
  data.pscan_period_mode = info->pscan_period_mode;
  data.pscan_mode = info->pscan_mode;
  memcpy(data.dev_class, info->dev_class, 3);
  data.clock_offset = info->clock_offset;
  data.rssi = 0x00;
  data.ssp_mode = 0x00;
  info++;
  hci_inquiry_cache_update(hdev, &data);
 }

 hci_dev_unlock(hdev);
}
