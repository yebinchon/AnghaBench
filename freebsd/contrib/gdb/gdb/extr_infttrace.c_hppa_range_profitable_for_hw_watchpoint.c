
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TTRACE_ARG_TYPE ;
typedef int LONGEST ;
typedef int CORE_ADDR ;


 int TT_NIL ;
 int TT_PROC_GET_MPROTECT ;
 int _SC_PAGE_SIZE ;
 int call_ttrace (int ,int,int ,int ,int ) ;
 scalar_t__ errno ;
 int sysconf (int ) ;

int
hppa_range_profitable_for_hw_watchpoint (int pid, CORE_ADDR start, LONGEST len)
{
  int range_is_stack_based;
  int range_is_accessible;
  CORE_ADDR page_start;
  int page_size;
  int page;
  LONGEST range_size_in_pages;





  range_is_stack_based = 0;







  range_is_accessible = 1;


  errno = 0;
  page_size = sysconf (_SC_PAGE_SIZE);





  if (errno || (page_size <= 0))
    {
      errno = 0;
      return 0;
    }

  page_start = (start / page_size) * page_size;
  range_size_in_pages = len / (LONGEST) page_size;

  for (page = 0; page < range_size_in_pages; page++, page_start += page_size)
    {
      int tt_status;
      int page_permissions;


      errno = 0;
      tt_status = call_ttrace (TT_PROC_GET_MPROTECT,
          pid,
          (TTRACE_ARG_TYPE) page_start,
          TT_NIL,
          (TTRACE_ARG_TYPE) & page_permissions);
      if (errno || (tt_status < 0))
 {
   errno = 0;
   range_is_accessible = 0;
   break;
 }


    }

  return (!range_is_stack_based && range_is_accessible);
}
