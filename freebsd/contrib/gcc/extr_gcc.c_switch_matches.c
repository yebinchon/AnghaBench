
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* part1; } ;


 scalar_t__ check_live_switch (int,int) ;
 int n_switches ;
 int strncmp (char*,char const*,int) ;
 TYPE_1__* switches ;

__attribute__((used)) static bool
switch_matches (const char *atom, const char *end_atom, int starred)
{
  int i;
  int len = end_atom - atom;
  int plen = starred ? len : -1;

  for (i = 0; i < n_switches; i++)
    if (!strncmp (switches[i].part1, atom, len)
 && (starred || switches[i].part1[len] == '\0')
 && check_live_switch (i, plen))
      return 1;

  return 0;
}
