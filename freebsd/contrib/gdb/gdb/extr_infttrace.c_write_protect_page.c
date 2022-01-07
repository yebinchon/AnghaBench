
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ page_size; scalar_t__ page_protections_allowed; } ;
typedef int TTRACE_ARG_TYPE ;
typedef scalar_t__ CORE_ADDR ;


 int PROT_WRITE ;
 int TT_NIL ;
 int TT_PROC_GET_MPROTECT ;
 int TT_PROC_SET_MPROTECT ;
 int call_ttrace (int ,int,int ,int ,int ) ;
 scalar_t__ errno ;
 TYPE_1__ memory_page_dictionary ;

__attribute__((used)) static int
write_protect_page (int pid, CORE_ADDR page_start)
{
  int tt_status;
  int original_permissions;
  int new_permissions;

  tt_status = call_ttrace (TT_PROC_GET_MPROTECT,
      pid,
      (TTRACE_ARG_TYPE) page_start,
      TT_NIL,
      (TTRACE_ARG_TYPE) & original_permissions);
  if (errno || (tt_status < 0))
    {
      return 0;
    }


  if (memory_page_dictionary.page_protections_allowed)
    {
      new_permissions = original_permissions & ~PROT_WRITE;
      tt_status = call_ttrace (TT_PROC_SET_MPROTECT,
          pid,
          (TTRACE_ARG_TYPE) page_start,
    (TTRACE_ARG_TYPE) memory_page_dictionary.page_size,
          (TTRACE_ARG_TYPE) new_permissions);
      if (errno || (tt_status < 0))
 {
   return 0;
 }
    }

  return original_permissions;
}
