
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inquiry_entry {void* timestamp; int data; struct inquiry_entry* next; } ;
struct inquiry_data {int bdaddr; } ;
struct inquiry_cache {void* timestamp; struct inquiry_entry* list; } ;
struct hci_dev {struct inquiry_cache inq_cache; } ;


 int BT_DBG (char*,struct inquiry_cache*,int ) ;
 int GFP_ATOMIC ;
 int batostr (int *) ;
 struct inquiry_entry* hci_inquiry_cache_lookup (struct hci_dev*,int *) ;
 void* jiffies ;
 struct inquiry_entry* kzalloc (int,int ) ;
 int memcpy (int *,struct inquiry_data*,int) ;

void hci_inquiry_cache_update(struct hci_dev *hdev, struct inquiry_data *data)
{
 struct inquiry_cache *cache = &hdev->inq_cache;
 struct inquiry_entry *e;

 BT_DBG("cache %p, %s", cache, batostr(&data->bdaddr));

 if (!(e = hci_inquiry_cache_lookup(hdev, &data->bdaddr))) {

  if (!(e = kzalloc(sizeof(struct inquiry_entry), GFP_ATOMIC)))
   return;
  e->next = cache->list;
  cache->list = e;
 }

 memcpy(&e->data, data, sizeof(*data));
 e->timestamp = jiffies;
 cache->timestamp = jiffies;
}
