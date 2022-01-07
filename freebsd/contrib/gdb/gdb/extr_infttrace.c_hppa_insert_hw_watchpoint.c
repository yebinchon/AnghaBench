
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reference_count; } ;
typedef TYPE_1__ memory_page_t ;
struct TYPE_5__ {scalar_t__ page_count; int page_size; } ;
typedef scalar_t__ LONGEST ;
typedef int CORE_ADDR ;


 int error (char*) ;
 TYPE_1__* get_dictionary_entry_of_page (int,int) ;
 int hppa_enable_syscall_events (int) ;
 TYPE_2__ memory_page_dictionary ;
 int require_memory_page_dictionary () ;

int
hppa_insert_hw_watchpoint (int pid, CORE_ADDR start, LONGEST len, int type)
{
  CORE_ADDR page_start;
  int dictionary_was_empty;
  int page_size;
  int page_id;
  LONGEST range_size_in_pages;

  if (type != 0)
    error ("read or access hardware watchpoints not supported on HP-UX");


  require_memory_page_dictionary ();

  dictionary_was_empty = (memory_page_dictionary.page_count == (LONGEST) 0);

  page_size = memory_page_dictionary.page_size;
  page_start = (start / page_size) * page_size;
  range_size_in_pages = ((LONGEST) len + (LONGEST) page_size - 1) / (LONGEST) page_size;

  for (page_id = 0; page_id < range_size_in_pages; page_id++, page_start += page_size)
    {
      memory_page_t *page;




      page = get_dictionary_entry_of_page (pid, page_start);
      page->reference_count++;
    }
  if (dictionary_was_empty)
    hppa_enable_syscall_events (pid);

  return 1;
}
