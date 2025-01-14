
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISLOWER (char const) ;
 scalar_t__ ISUPPER (char const) ;
 int printf (char*,char const*,char const,...) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static void
change_state (const char *oldpos, const char *newpos, const char *indent)
{
  int odepth = strlen (oldpos);
  int ndepth = strlen (newpos);
  int depth;
  int old_has_insn, new_has_insn;


  for (depth = odepth; strncmp (oldpos, newpos, depth) != 0; --depth)
    continue;


  for (old_has_insn = odepth - 1; old_has_insn >= 0; --old_has_insn)
    if (ISUPPER (oldpos[old_has_insn]))
      break;
  for (new_has_insn = ndepth - 1; new_has_insn >= 0; --new_has_insn)
    if (ISUPPER (newpos[new_has_insn]))
      break;


  while (depth < ndepth)
    {

      if (ISUPPER (newpos[depth]))
 {
   printf ("%stem = peep2_next_insn (%d);\n",
    indent, newpos[depth] - 'A');
   printf ("%sx%d = PATTERN (tem);\n", indent, depth + 1);
 }
      else if (ISLOWER (newpos[depth]))
 printf ("%sx%d = XVECEXP (x%d, 0, %d);\n",
  indent, depth + 1, depth, newpos[depth] - 'a');
      else
 printf ("%sx%d = XEXP (x%d, %c);\n",
  indent, depth + 1, depth, newpos[depth]);
      ++depth;
    }
}
