
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page_size; } ;
typedef int CORE_ADDR ;


 int MEMORY_PAGE_DICTIONARY_BUCKET_COUNT ;
 TYPE_1__ memory_page_dictionary ;

__attribute__((used)) static int
get_dictionary_bucket_of_page (CORE_ADDR page_start)
{
  int hash;

  hash = (page_start / memory_page_dictionary.page_size);
  hash = hash % MEMORY_PAGE_DICTIONARY_BUCKET_COUNT;

  return hash;
}
