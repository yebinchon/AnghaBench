
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ reference_count; } ;
typedef TYPE_1__ memory_page_t ;
struct TYPE_6__ {int page_size; int page_count; scalar_t__ page_protections_allowed; } ;
typedef int LONGEST ;
typedef int CORE_ADDR ;


 int error (char*) ;
 TYPE_1__* get_dictionary_entry_of_page (int,int) ;
 int hppa_disable_syscall_events (int) ;
 TYPE_3__ memory_page_dictionary ;
 int remove_dictionary_entry_of_page (int,TYPE_1__*) ;
 int require_memory_page_dictionary () ;

int
hppa_remove_hw_watchpoint (int pid, CORE_ADDR start, LONGEST len, int type)
{
  CORE_ADDR page_start;
  int dictionary_is_empty;
  int page_size;
  int page_id;
  LONGEST range_size_in_pages;

  if (type != 0)
    error ("read or access hardware watchpoints not supported on HP-UX");


  require_memory_page_dictionary ();

  page_size = memory_page_dictionary.page_size;
  page_start = (start / page_size) * page_size;
  range_size_in_pages = ((LONGEST) len + (LONGEST) page_size - 1) / (LONGEST) page_size;

  for (page_id = 0; page_id < range_size_in_pages; page_id++, page_start += page_size)
    {
      memory_page_t *page;

      page = get_dictionary_entry_of_page (pid, page_start);
      page->reference_count--;





      if (page->reference_count == 0)
 remove_dictionary_entry_of_page (pid, page);
    }

  dictionary_is_empty = (memory_page_dictionary.page_count == (LONGEST) 0);
  if (dictionary_is_empty && memory_page_dictionary.page_protections_allowed)
    hppa_disable_syscall_events (pid);

  return 1;
}
