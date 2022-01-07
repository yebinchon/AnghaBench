
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* func ) () ;int desc; } ;


 int PERF_COLOR_RED ;
 int color_fprintf (int ,int ,char*) ;
 int perf_test__matches (int,int,char const**) ;
 int pr_debug (char*,...) ;
 int pr_info (char*,...) ;
 int stderr ;
 int strlen (int ) ;
 int stub1 () ;
 TYPE_1__* tests ;

__attribute__((used)) static int __cmd_test(int argc, const char *argv[])
{
 int i = 0;
 int width = 0;

 while (tests[i].func) {
  int len = strlen(tests[i].desc);

  if (width < len)
   width = len;
  ++i;
 }

 i = 0;
 while (tests[i].func) {
  int curr = i++, err;

  if (!perf_test__matches(curr, argc, argv))
   continue;

  pr_info("%2d: %-*s:", i, width, tests[curr].desc);
  pr_debug("\n--- start ---\n");
  err = tests[curr].func();
  pr_debug("---- end ----\n%s:", tests[curr].desc);
  if (err)
   color_fprintf(stderr, PERF_COLOR_RED, " FAILED!\n");
  else
   pr_info(" Ok\n");
 }

 return 0;
}
