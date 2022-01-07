
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct function_info {struct call_info* call_list; } ;
struct call_info {scalar_t__ fun; scalar_t__ is_tail; struct call_info* next; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static bfd_boolean
insert_callee (struct function_info *caller, struct call_info *callee)
{
  struct call_info *p;
  for (p = caller->call_list; p != ((void*)0); p = p->next)
    if (p->fun == callee->fun)
      {


 if (p->is_tail > callee->is_tail)
   p->is_tail = callee->is_tail;
 return FALSE;
      }
  callee->next = caller->call_list;
  caller->call_list = callee;
  return TRUE;
}
