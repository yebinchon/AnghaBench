
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* enumname; char* format; } ;


 TYPE_1__* defs ;
 scalar_t__ excluded_rtx (int) ;
 int printf (char*,char*,...) ;
 int puts (char*) ;
 scalar_t__ special_rtx (int) ;

__attribute__((used)) static void
genmacro (int idx)
{
  const char *p;
  int i;




  if (excluded_rtx (idx))

    return;

  printf ("#define gen_rtx_%s%s(MODE",
    special_rtx (idx) ? "raw_" : "", defs[idx].enumname);

  for (p = defs[idx].format, i = 0; *p != 0; p++)
    if (*p != '0')
      printf (", ARG%d", i++);

  printf (") \\\n  gen_rtx_fmt_%s (%s, (MODE)",
   defs[idx].format, defs[idx].enumname);

  for (p = defs[idx].format, i = 0; *p != 0; p++)
    if (*p != '0')
      printf (", (ARG%d)", i++);

  puts (")");
}
