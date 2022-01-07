
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {int* by_value; } ;


 int DWARF_REG_TO_UNWIND_COLUMN (int) ;

__attribute__((used)) static inline int
_Unwind_GRByValue (struct _Unwind_Context *context, int index)
{
  index = DWARF_REG_TO_UNWIND_COLUMN (index);
  return context->by_value[index];
}
