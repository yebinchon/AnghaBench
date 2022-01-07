
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int desc; } ;


 scalar_t__ strstr (int ,char const*) ;
 long strtoul (char const*,char**,int) ;
 TYPE_1__* tests ;

__attribute__((used)) static bool perf_test__matches(int curr, int argc, const char *argv[])
{
 int i;

 if (argc == 0)
  return 1;

 for (i = 0; i < argc; ++i) {
  char *end;
  long nr = strtoul(argv[i], &end, 10);

  if (*end == '\0') {
   if (nr == curr + 1)
    return 1;
   continue;
  }

  if (strstr(tests[curr].desc, argv[i]))
   return 1;
 }

 return 0;
}
