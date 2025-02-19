
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 char* GET_MODE_NAME (int ) ;
 scalar_t__ MATCH_DUP ;
 scalar_t__ MATCH_SCRATCH ;
 int XINT (int ,int ) ;
 char* XSTR (int ,int) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
output_peephole2_scratches (rtx split)
{
  int i;
  int insn_nr = 0;

  printf ("  HARD_REG_SET _regs_allocated;\n");
  printf ("  CLEAR_HARD_REG_SET (_regs_allocated);\n");

  for (i = 0; i < XVECLEN (split, 0); i++)
    {
      rtx elt = XVECEXP (split, 0, i);
      if (GET_CODE (elt) == MATCH_SCRATCH)
 {
   int last_insn_nr = insn_nr;
   int cur_insn_nr = insn_nr;
   int j;
   for (j = i + 1; j < XVECLEN (split, 0); j++)
     if (GET_CODE (XVECEXP (split, 0, j)) == MATCH_DUP)
       {
  if (XINT (XVECEXP (split, 0, j), 0) == XINT (elt, 0))
    last_insn_nr = cur_insn_nr;
       }
     else if (GET_CODE (XVECEXP (split, 0, j)) != MATCH_SCRATCH)
       cur_insn_nr++;

   printf ("  if ((operands[%d] = peep2_find_free_register (%d, %d, \"%s\", %smode, &_regs_allocated)) == NULL_RTX)\n    return NULL;\n",

    XINT (elt, 0),
    insn_nr, last_insn_nr,
    XSTR (elt, 1),
    GET_MODE_NAME (GET_MODE (elt)));

 }
      else if (GET_CODE (elt) != MATCH_DUP)
 insn_nr++;
    }
}
