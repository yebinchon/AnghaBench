
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ IS_VSPACE (char const) ;
 char* XSTR (int ,int) ;
 int fputs (char*,int ) ;
 int max_id_len ;
 int maybe_eval_c_test (char*) ;
 int obstack ;
 int obstack_grow (int *,int *,int) ;
 int printf (char*,char const*) ;
 int putchar (char const) ;
 int stdout ;
 int strlen (char const*) ;

__attribute__((used)) static void
gen_insn (rtx insn)
{
  const char *name = XSTR (insn, 0);
  const char *p;
  int len;
  int truth = maybe_eval_c_test (XSTR (insn, 2));




  if (name[0] == 0 || name[0] == '*')
    return;

  len = strlen (name);

  if (len > max_id_len)
    max_id_len = len;

  if (truth == 0)
                        ;
  else if (truth == 1)
    printf ("#define HAVE_%s 1\n", name);
  else
    {


      printf ("#define HAVE_%s (", name);
      for (p = XSTR (insn, 2); *p; p++)
 {
   if (IS_VSPACE (*p))
     fputs (" \\\n", stdout);
   else
     putchar (*p);
 }
      fputs (")\n", stdout);
    }

  obstack_grow (&obstack, &insn, sizeof (rtx));
}
