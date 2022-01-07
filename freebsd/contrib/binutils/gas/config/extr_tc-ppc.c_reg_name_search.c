
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_reg {int value; int name; } ;


 int strcasecmp (char const*,int ) ;

__attribute__((used)) static int
reg_name_search (const struct pd_reg *regs, int regcount, const char *name)
{
  int middle, low, high;
  int cmp;

  low = 0;
  high = regcount - 1;

  do
    {
      middle = (low + high) / 2;
      cmp = strcasecmp (name, regs[middle].name);
      if (cmp < 0)
 high = middle - 1;
      else if (cmp > 0)
 low = middle + 1;
      else
 return regs[middle].value;
    }
  while (low <= high);

  return -1;
}
