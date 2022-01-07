
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {scalar_t__ lval; scalar_t__ modifiable; struct value* next; } ;
struct type {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int TARGET_REGION_OK_FOR_HW_WATCHPOINT (scalar_t__,int) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 scalar_t__ TYPE_CODE_STRUCT ;
 int TYPE_LENGTH (int ) ;
 scalar_t__ VALUE_ADDRESS (struct value*) ;
 scalar_t__ VALUE_LAZY (struct value*) ;
 scalar_t__ VALUE_LVAL (struct value*) ;
 scalar_t__ VALUE_OFFSET (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 int can_use_hw_watchpoints ;
 struct type* check_typedef (int ) ;
 scalar_t__ lval_memory ;
 scalar_t__ lval_register ;
 scalar_t__ not_lval ;

__attribute__((used)) static int
can_use_hardware_watchpoint (struct value *v)
{
  int found_memory_cnt = 0;
  struct value *head = v;


  if (!can_use_hw_watchpoints)
    return 0;
  for (; v; v = v->next)
    {
      if (VALUE_LVAL (v) == lval_memory)
 {
   if (VALUE_LAZY (v))



     ;
   else
     {


       struct type *vtype = check_typedef (VALUE_TYPE (v));




       if (v == head
    || (TYPE_CODE (vtype) != TYPE_CODE_STRUCT
        && TYPE_CODE (vtype) != TYPE_CODE_ARRAY))
  {
    CORE_ADDR vaddr = VALUE_ADDRESS (v) + VALUE_OFFSET (v);
    int len = TYPE_LENGTH (VALUE_TYPE (v));

    if (!TARGET_REGION_OK_FOR_HW_WATCHPOINT (vaddr, len))
      return 0;
    else
      found_memory_cnt++;
  }
     }
 }
      else if (v->lval != not_lval && v->modifiable == 0)
 return 0;
      else if (v->lval == lval_register)
 return 0;
    }



  return found_memory_cnt;
}
