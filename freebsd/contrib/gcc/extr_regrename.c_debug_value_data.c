
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value_data {TYPE_1__* e; } ;
struct TYPE_2__ {unsigned int oldest_regno; scalar_t__ mode; unsigned int next_regno; } ;
typedef int HARD_REG_SET ;


 int CLEAR_HARD_REG_SET (int ) ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 char* GET_MODE_NAME (scalar_t__) ;
 unsigned int INVALID_REGNUM ;
 int SET_HARD_REG_BIT (int ,unsigned int) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,unsigned int) ;
 scalar_t__ VOIDmode ;
 int fprintf (int ,char*,unsigned int,...) ;
 int fputc (char,int ) ;
 int stderr ;

void
debug_value_data (struct value_data *vd)
{
  HARD_REG_SET set;
  unsigned int i, j;

  CLEAR_HARD_REG_SET (set);

  for (i = 0; i < FIRST_PSEUDO_REGISTER; ++i)
    if (vd->e[i].oldest_regno == i)
      {
 if (vd->e[i].mode == VOIDmode)
   {
     if (vd->e[i].next_regno != INVALID_REGNUM)
       fprintf (stderr, "[%u] Bad next_regno for empty chain (%u)\n",
         i, vd->e[i].next_regno);
     continue;
   }

 SET_HARD_REG_BIT (set, i);
 fprintf (stderr, "[%u %s] ", i, GET_MODE_NAME (vd->e[i].mode));

 for (j = vd->e[i].next_regno;
      j != INVALID_REGNUM;
      j = vd->e[j].next_regno)
   {
     if (TEST_HARD_REG_BIT (set, j))
       {
  fprintf (stderr, "[%u] Loop in regno chain\n", j);
  return;
       }

     if (vd->e[j].oldest_regno != i)
       {
  fprintf (stderr, "[%u] Bad oldest_regno (%u)\n",
    j, vd->e[j].oldest_regno);
  return;
       }
     SET_HARD_REG_BIT (set, j);
     fprintf (stderr, "[%u %s] ", j, GET_MODE_NAME (vd->e[j].mode));
   }
 fputc ('\n', stderr);
      }

  for (i = 0; i < FIRST_PSEUDO_REGISTER; ++i)
    if (! TEST_HARD_REG_BIT (set, i)
 && (vd->e[i].mode != VOIDmode
     || vd->e[i].oldest_regno != i
     || vd->e[i].next_regno != INVALID_REGNUM))
      fprintf (stderr, "[%u] Non-empty reg in chain (%s %u %i)\n",
        i, GET_MODE_NAME (vd->e[i].mode), vd->e[i].oldest_regno,
        vd->e[i].next_regno);
}
