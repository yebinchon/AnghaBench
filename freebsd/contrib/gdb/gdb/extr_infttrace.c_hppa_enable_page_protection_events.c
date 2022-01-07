
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; int page_start; int original_permissions; } ;
typedef TYPE_2__ memory_page_t ;
struct TYPE_6__ {int page_protections_allowed; TYPE_1__* buckets; } ;
struct TYPE_4__ {TYPE_2__* next; } ;


 int MEMORY_PAGE_DICTIONARY_BUCKET_COUNT ;
 TYPE_3__ memory_page_dictionary ;
 int write_protect_page (int,int ) ;

void
hppa_enable_page_protection_events (int pid)
{
  int bucket;

  memory_page_dictionary.page_protections_allowed = 1;

  for (bucket = 0; bucket < MEMORY_PAGE_DICTIONARY_BUCKET_COUNT; bucket++)
    {
      memory_page_t *page;

      page = memory_page_dictionary.buckets[bucket].next;
      while (page != ((void*)0))
 {
   page->original_permissions = write_protect_page (pid, page->page_start);
   page = page->next;
 }
    }
}
