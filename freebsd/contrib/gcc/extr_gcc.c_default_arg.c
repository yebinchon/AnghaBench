
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int str; } ;


 TYPE_1__* mdswitches ;
 int n_mdswitches ;
 int strncmp (char const*,int ,int) ;

__attribute__((used)) static int
default_arg (const char *p, int len)
{
  int i;

  for (i = 0; i < n_mdswitches; i++)
    if (len == mdswitches[i].len && ! strncmp (p, mdswitches[i].str, len))
      return 1;

  return 0;
}
