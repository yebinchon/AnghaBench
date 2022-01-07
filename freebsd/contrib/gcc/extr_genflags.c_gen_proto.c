
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 char* XSTR (int ,int) ;
 int fputs (char*,int ) ;
 int gen_macro (char const*,int,int) ;
 char* max_id_len ;
 int maybe_eval_c_test (char*) ;
 int num_operands (int ) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int puts (char*) ;
 int stdout ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void
gen_proto (rtx insn)
{
  int num = num_operands (insn);
  int i;
  const char *name = XSTR (insn, 0);
  int truth = maybe_eval_c_test (XSTR (insn, 2));






  if (name[0] == 'c' || name[0] == 's')
    {
      if (!strcmp (name, "call")
   || !strcmp (name, "call_pop")
   || !strcmp (name, "sibcall")
   || !strcmp (name, "sibcall_pop"))
 gen_macro (name, num, 4);
      else if (!strcmp (name, "call_value")
        || !strcmp (name, "call_value_pop")
        || !strcmp (name, "sibcall_value")
        || !strcmp (name, "sibcall_value_pop"))
 gen_macro (name, num, 5);
    }

  if (truth != 0)
    printf ("extern rtx        gen_%-*s (", max_id_len, name);
  else
    printf ("static inline rtx gen_%-*s (", max_id_len, name);

  if (num == 0)
    fputs ("void", stdout);
  else
    {
      for (i = 1; i < num; i++)
 fputs ("rtx, ", stdout);

      fputs ("rtx", stdout);
    }

  puts (");");



  if (truth == 0)
    {
      printf ("static inline rtx\ngen_%s", name);
      if (num > 0)
 {
   putchar ('(');
   for (i = 0; i < num-1; i++)
     printf ("rtx ARG_UNUSED (%c), ", 'a' + i);
   printf ("rtx ARG_UNUSED (%c))\n", 'a' + i);
 }
      else
 puts ("(void)");
      puts ("{\n  return 0;\n}");
    }

}
