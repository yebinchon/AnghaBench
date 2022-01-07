
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clobber_pat {int first_clobber; int pattern; struct clobber_ent* insns; struct clobber_pat* next; } ;
struct clobber_ent {int code_number; struct clobber_ent* next; } ;


 int GET_CODE (int ) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 struct clobber_pat* clobber_list ;
 int gen_exp (int ,int ,int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void
output_add_clobbers (void)
{
  struct clobber_pat *clobber;
  struct clobber_ent *ent;
  int i;

  printf ("\n\nvoid\nadd_clobbers (rtx pattern ATTRIBUTE_UNUSED, int insn_code_number)\n");
  printf ("{\n");
  printf ("  switch (insn_code_number)\n");
  printf ("    {\n");

  for (clobber = clobber_list; clobber; clobber = clobber->next)
    {
      for (ent = clobber->insns; ent; ent = ent->next)
 printf ("    case %d:\n", ent->code_number);

      for (i = clobber->first_clobber; i < XVECLEN (clobber->pattern, 1); i++)
 {
   printf ("      XVECEXP (pattern, 0, %d) = ", i);
   gen_exp (XVECEXP (clobber->pattern, 1, i),
     GET_CODE (clobber->pattern), ((void*)0));
   printf (";\n");
 }

      printf ("      break;\n\n");
    }

  printf ("    default:\n");
  printf ("      gcc_unreachable ();\n");
  printf ("    }\n");
  printf ("}\n");
}
