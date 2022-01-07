
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void
output_get_insn_name (void)
{
  printf ("const char *\n");
  printf ("get_insn_name (int code)\n");
  printf ("{\n");
  printf ("  if (code == NOOP_MOVE_INSN_CODE)\n");
  printf ("    return \"NOOP_MOVE\";\n");
  printf ("  else\n");
  printf ("    return insn_data[code].name;\n");
  printf ("}\n");
}
