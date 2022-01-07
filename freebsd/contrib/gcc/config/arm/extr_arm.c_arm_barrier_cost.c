
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;




 scalar_t__ GET_CODE (int *) ;


 int * next_nonnote_insn (int *) ;

__attribute__((used)) static int
arm_barrier_cost (rtx insn)
{



  int base_cost = 50;
  rtx next = next_nonnote_insn (insn);

  if (next != ((void*)0) && GET_CODE (next) == 130)
    base_cost -= 20;

  switch (GET_CODE (insn))
    {
    case 130:


      return 50;

    case 129:
    case 131:
      return base_cost;

    case 128:
      return base_cost - 10;

    default:
      return base_cost + 10;
    }
}
