
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ page_start; struct TYPE_4__* next; struct TYPE_4__* previous; int original_permissions; scalar_t__ reference_count; } ;
typedef TYPE_1__ memory_page_t ;
struct TYPE_5__ {int page_count; TYPE_1__* buckets; } ;
typedef scalar_t__ CORE_ADDR ;


 int get_dictionary_bucket_of_page (scalar_t__) ;
 TYPE_2__ memory_page_dictionary ;
 int require_memory_page_dictionary () ;
 int write_protect_page (int,scalar_t__) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static memory_page_t *
get_dictionary_entry_of_page (int pid, CORE_ADDR page_start)
{
  int bucket;
  memory_page_t *page = ((void*)0);
  memory_page_t *previous_page = ((void*)0);


  require_memory_page_dictionary ();




  bucket = get_dictionary_bucket_of_page (page_start);
  page = &memory_page_dictionary.buckets[bucket];
  while (page != ((void*)0))
    {
      if (page->page_start == page_start)
 break;
      previous_page = page;
      page = page->next;
    }




  if (page == ((void*)0))
    {

      page = (memory_page_t *) xmalloc (sizeof (memory_page_t));
      page->page_start = page_start;
      page->reference_count = 0;
      page->next = ((void*)0);
      page->previous = ((void*)0);


      page->original_permissions = write_protect_page (pid, page_start);


      page->previous = previous_page;
      previous_page->next = page;

      memory_page_dictionary.page_count++;
    }

  return page;
}
