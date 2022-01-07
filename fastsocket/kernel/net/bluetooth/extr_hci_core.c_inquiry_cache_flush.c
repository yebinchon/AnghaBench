
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inquiry_entry {struct inquiry_entry* next; } ;
struct inquiry_cache {struct inquiry_entry* list; } ;
struct hci_dev {struct inquiry_cache inq_cache; } ;


 int BT_DBG (char*,struct inquiry_cache*) ;
 int kfree (struct inquiry_entry*) ;

__attribute__((used)) static void inquiry_cache_flush(struct hci_dev *hdev)
{
 struct inquiry_cache *cache = &hdev->inq_cache;
 struct inquiry_entry *next = cache->list, *e;

 BT_DBG("cache %p", cache);

 cache->list = ((void*)0);
 while ((e = next)) {
  next = e->next;
  kfree(e);
 }
}
