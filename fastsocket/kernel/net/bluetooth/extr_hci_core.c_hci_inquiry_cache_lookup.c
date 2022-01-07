
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bdaddr; } ;
struct inquiry_entry {TYPE_1__ data; struct inquiry_entry* next; } ;
struct inquiry_cache {struct inquiry_entry* list; } ;
struct hci_dev {struct inquiry_cache inq_cache; } ;
typedef int bdaddr_t ;


 int BT_DBG (char*,struct inquiry_cache*,int ) ;
 int bacmp (int *,int *) ;
 int batostr (int *) ;

struct inquiry_entry *hci_inquiry_cache_lookup(struct hci_dev *hdev, bdaddr_t *bdaddr)
{
 struct inquiry_cache *cache = &hdev->inq_cache;
 struct inquiry_entry *e;

 BT_DBG("cache %p, %s", cache, batostr(bdaddr));

 for (e = cache->list; e; e = e->next)
  if (!bacmp(&e->data.bdaddr, bdaddr))
   break;
 return e;
}
