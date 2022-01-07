
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 char* XSTR (int ,int) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int insn_code_number ;
 int match_rtx (int ,int *,int) ;
 int n_operands ;
 int printf (char*,...) ;

__attribute__((used)) static void
gen_peephole (rtx peep)
{
  int ninsns = XVECLEN (peep, 0);
  int i;

  n_operands = 0;

  printf ("  insn = ins1;\n");

  for (i = 0; i < ninsns; i++)
    {
      if (i > 0)
 {
   printf ("  do { insn = NEXT_INSN (insn);\n");
   printf ("       if (insn == 0) goto L%d; }\n",
    insn_code_number);
   printf ("  while (NOTE_P (insn)\n");
   printf ("\t || (NONJUMP_INSN_P (insn)\n");
   printf ("\t     && (GET_CODE (PATTERN (insn)) == USE\n");
   printf ("\t\t || GET_CODE (PATTERN (insn)) == CLOBBER)));\n");

   printf ("  if (LABEL_P (insn)\n      || BARRIER_P (insn))\n    goto L%d;\n",

    insn_code_number);
 }

      printf ("  pat = PATTERN (insn);\n");




      match_rtx (XVECEXP (peep, 0, i), ((void*)0), insn_code_number);
    }




  if (XSTR (peep, 1) && XSTR (peep, 1)[0])
    printf ("  if (! (%s)) goto L%d;\n",
     XSTR (peep, 1), insn_code_number);







  printf ("  PATTERN (ins1) = gen_rtx_PARALLEL (VOIDmode, gen_rtvec_v (%d, operands));\n", n_operands);



  printf ("  INSN_CODE (ins1) = %d;\n",
   insn_code_number);


  if (ninsns > 1)
    printf ("  delete_for_peephole (NEXT_INSN (ins1), insn);\n");



  printf ("  return NEXT_INSN (insn);\n");

  printf (" L%d:\n\n", insn_code_number);
}
