
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 char* XSTR (int ,int) ;
 int maybe_eval_c_test (char*) ;
 int printf (char*,char const*,...) ;

__attribute__((used)) static void
gen_insn (rtx insn, int code)
{
  const char *name = XSTR (insn, 0);
  int truth = maybe_eval_c_test (XSTR (insn, 2));




  if (name[0] != 0 && name[0] != '*')
    {
      if (truth == 0)
 printf ("#define CODE_FOR_%s CODE_FOR_nothing\n", name);
      else
 printf ("  CODE_FOR_%s = %d,\n", name, code);
    }
}
