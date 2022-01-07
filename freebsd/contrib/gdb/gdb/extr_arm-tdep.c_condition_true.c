
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long FLAG_C ;
 unsigned long FLAG_N ;
 unsigned long FLAG_V ;
 unsigned long FLAG_Z ;
 unsigned long INST_AL ;
 unsigned long INST_NV ;




__attribute__((used)) static int
condition_true (unsigned long cond, unsigned long status_reg)
{
  if (cond == INST_AL || cond == INST_NV)
    return 1;

  switch (cond)
    {
    case 139:
      return ((status_reg & FLAG_Z) != 0);
    case 131:
      return ((status_reg & FLAG_Z) == 0);
    case 140:
      return ((status_reg & FLAG_C) != 0);
    case 141:
      return ((status_reg & FLAG_C) == 0);
    case 132:
      return ((status_reg & FLAG_N) != 0);
    case 130:
      return ((status_reg & FLAG_N) == 0);
    case 128:
      return ((status_reg & FLAG_V) != 0);
    case 129:
      return ((status_reg & FLAG_V) == 0);
    case 136:
      return ((status_reg & (FLAG_C | FLAG_Z)) == FLAG_C);
    case 134:
      return ((status_reg & (FLAG_C | FLAG_Z)) != FLAG_C);
    case 138:
      return (((status_reg & FLAG_N) == 0) == ((status_reg & FLAG_V) == 0));
    case 133:
      return (((status_reg & FLAG_N) == 0) != ((status_reg & FLAG_V) == 0));
    case 137:
      return (((status_reg & FLAG_Z) == 0) &&
       (((status_reg & FLAG_N) == 0) == ((status_reg & FLAG_V) == 0)));
    case 135:
      return (((status_reg & FLAG_Z) != 0) ||
       (((status_reg & FLAG_N) == 0) != ((status_reg & FLAG_V) == 0)));
    }
  return 1;
}
