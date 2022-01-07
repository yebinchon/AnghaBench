
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ page_count; TYPE_1__* buckets; } ;
struct TYPE_3__ {int * previous; int * next; scalar_t__ reference_count; scalar_t__ page_start; } ;
typedef scalar_t__ LONGEST ;
typedef scalar_t__ CORE_ADDR ;


 int MEMORY_PAGE_DICTIONARY_BUCKET_COUNT ;
 TYPE_2__ memory_page_dictionary ;

__attribute__((used)) static void
require_memory_page_dictionary (void)
{
  int i;


  if (memory_page_dictionary.page_count >= (LONGEST) 0)
    return;


  memory_page_dictionary.page_count = (LONGEST) 0;

  for (i = 0; i < MEMORY_PAGE_DICTIONARY_BUCKET_COUNT; i++)
    {
      memory_page_dictionary.buckets[i].page_start = (CORE_ADDR) 0;
      memory_page_dictionary.buckets[i].reference_count = 0;
      memory_page_dictionary.buckets[i].next = ((void*)0);
      memory_page_dictionary.buckets[i].previous = ((void*)0);
    }
}
