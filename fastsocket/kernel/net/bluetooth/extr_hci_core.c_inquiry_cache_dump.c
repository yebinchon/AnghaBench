
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inquiry_info {int clock_offset; int dev_class; int pscan_mode; int pscan_period_mode; int pscan_rep_mode; int bdaddr; } ;
struct inquiry_data {int clock_offset; int dev_class; int pscan_mode; int pscan_period_mode; int pscan_rep_mode; int bdaddr; } ;
struct inquiry_entry {struct inquiry_data data; struct inquiry_entry* next; } ;
struct inquiry_cache {struct inquiry_entry* list; } ;
struct hci_dev {struct inquiry_cache inq_cache; } ;
typedef int __u8 ;


 int BT_DBG (char*,struct inquiry_cache*,int) ;
 int bacpy (int *,int *) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int inquiry_cache_dump(struct hci_dev *hdev, int num, __u8 *buf)
{
 struct inquiry_cache *cache = &hdev->inq_cache;
 struct inquiry_info *info = (struct inquiry_info *) buf;
 struct inquiry_entry *e;
 int copied = 0;

 for (e = cache->list; e && copied < num; e = e->next, copied++) {
  struct inquiry_data *data = &e->data;
  bacpy(&info->bdaddr, &data->bdaddr);
  info->pscan_rep_mode = data->pscan_rep_mode;
  info->pscan_period_mode = data->pscan_period_mode;
  info->pscan_mode = data->pscan_mode;
  memcpy(info->dev_class, data->dev_class, 3);
  info->clock_offset = data->clock_offset;
  info++;
 }

 BT_DBG("cache %p, copied %d", cache, copied);
 return copied;
}
