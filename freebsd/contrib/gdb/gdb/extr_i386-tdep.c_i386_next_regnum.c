
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int next_regnum ;
__attribute__((used)) static int
i386_next_regnum (int regnum)
{






  static int next_regnum[] =
  {
    129,
    132,
    131,
    128,
    -1, -1,
    130,
    133
  };

  if (regnum >= 0 && regnum < sizeof (next_regnum) / sizeof (next_regnum[0]))
    return next_regnum[regnum];

  return -1;
}
