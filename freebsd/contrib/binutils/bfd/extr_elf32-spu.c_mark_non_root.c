
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct function_info {void* visit1; void* non_root; struct call_info* call_list; } ;
struct call_info {struct function_info* fun; struct call_info* next; } ;


 void* TRUE ;

__attribute__((used)) static void
mark_non_root (struct function_info *fun)
{
  struct call_info *call;

  fun->visit1 = TRUE;
  for (call = fun->call_list; call; call = call->next)
    {
      call->fun->non_root = TRUE;
      if (!call->fun->visit1)
 mark_non_root (call->fun);
    }
}
