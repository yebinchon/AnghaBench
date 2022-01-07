
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record_stack_memrefs_data {int memlist; int insn; } ;
typedef int rtx ;


 int GET_CODE (int ) ;


 int REGNO (int ) ;
 int STACK_POINTER_REGNUM ;
 int record_one_stack_memref (int ,int *,int ) ;
 int reg_mentioned_p (int ,int ) ;
 int stack_memref_p (int ) ;
 int stack_pointer_rtx ;

__attribute__((used)) static int
record_stack_memrefs (rtx *xp, void *data)
{
  rtx x = *xp;
  struct record_stack_memrefs_data *d =
    (struct record_stack_memrefs_data *) data;
  if (!x)
    return 0;
  switch (GET_CODE (x))
    {
    case 129:
      if (!reg_mentioned_p (stack_pointer_rtx, x))
 return -1;


      if (stack_memref_p (x))
 {
   d->memlist = record_one_stack_memref (d->insn, xp, d->memlist);
   return -1;
 }
      return 1;
    case 128:
      if (REGNO (x) == STACK_POINTER_REGNUM)
 return 1;
      break;
    default:
      break;
    }
  return 0;
}
