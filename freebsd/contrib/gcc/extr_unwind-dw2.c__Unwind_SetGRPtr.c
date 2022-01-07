
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {void** reg; scalar_t__* by_value; } ;


 int DWARF_REG_TO_UNWIND_COLUMN (int) ;
 scalar_t__ _Unwind_IsExtendedContext (struct _Unwind_Context*) ;

__attribute__((used)) static inline void
_Unwind_SetGRPtr (struct _Unwind_Context *context, int index, void *p)
{
  index = DWARF_REG_TO_UNWIND_COLUMN (index);
  if (_Unwind_IsExtendedContext (context))
    context->by_value[index] = 0;
  context->reg[index] = p;
}
