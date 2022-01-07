
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int desc; scalar_t__ func; } ;


 int pr_info (char*,int,int ) ;
 int strstr (int ,char const*) ;
 TYPE_1__* tests ;

__attribute__((used)) static int perf_test__list(int argc, const char **argv)
{
 int i = 0;

 while (tests[i].func) {
  int curr = i++;

  if (argc > 1 && !strstr(tests[curr].desc, argv[1]))
   continue;

  pr_info("%2d: %s\n", i, tests[curr].desc);
 }

 return 0;
}
