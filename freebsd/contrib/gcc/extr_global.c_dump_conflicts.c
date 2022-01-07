
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t reg; int size; int hard_reg_preferences; int hard_reg_conflicts; } ;
typedef int FILE ;


 scalar_t__ CONFLICTP (int,int) ;
 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 TYPE_1__* allocno ;
 size_t* allocno_order ;
 int fprintf (int *,char*,...) ;
 int max_allocno ;
 int max_regno ;
 size_t* reg_allocno ;
 scalar_t__* reg_renumber ;

__attribute__((used)) static void
dump_conflicts (FILE *file)
{
  int i;
  int has_preferences;
  int nregs;
  nregs = 0;
  for (i = 0; i < max_allocno; i++)
    {
      if (reg_renumber[allocno[allocno_order[i]].reg] >= 0)
 continue;
      nregs++;
    }
  fprintf (file, ";; %d regs to allocate:", nregs);
  for (i = 0; i < max_allocno; i++)
    {
      int j;
      if (reg_renumber[allocno[allocno_order[i]].reg] >= 0)
 continue;
      fprintf (file, " %d", allocno[allocno_order[i]].reg);
      for (j = 0; j < max_regno; j++)
 if (reg_allocno[j] == allocno_order[i]
     && j != allocno[allocno_order[i]].reg)
   fprintf (file, "+%d", j);
      if (allocno[allocno_order[i]].size != 1)
 fprintf (file, " (%d)", allocno[allocno_order[i]].size);
    }
  fprintf (file, "\n");

  for (i = 0; i < max_allocno; i++)
    {
      int j;
      fprintf (file, ";; %d conflicts:", allocno[i].reg);
      for (j = 0; j < max_allocno; j++)
 if (CONFLICTP (j, i))
   fprintf (file, " %d", allocno[j].reg);
      for (j = 0; j < FIRST_PSEUDO_REGISTER; j++)
 if (TEST_HARD_REG_BIT (allocno[i].hard_reg_conflicts, j))
   fprintf (file, " %d", j);
      fprintf (file, "\n");

      has_preferences = 0;
      for (j = 0; j < FIRST_PSEUDO_REGISTER; j++)
 if (TEST_HARD_REG_BIT (allocno[i].hard_reg_preferences, j))
   has_preferences = 1;

      if (! has_preferences)
 continue;
      fprintf (file, ";; %d preferences:", allocno[i].reg);
      for (j = 0; j < FIRST_PSEUDO_REGISTER; j++)
 if (TEST_HARD_REG_BIT (allocno[i].hard_reg_preferences, j))
   fprintf (file, " %d", j);
      fprintf (file, "\n");
    }
  fprintf (file, "\n");
}
