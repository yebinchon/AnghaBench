
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct df {int dummy; } ;
struct TYPE_4__ {int reg_chain; } ;
struct TYPE_3__ {int reg_chain; } ;
typedef int FILE ;


 TYPE_2__* DF_REG_DEF_GET (struct df*,unsigned int) ;
 TYPE_1__* DF_REG_USE_GET (struct df*,unsigned int) ;
 int df_regs_chain_dump (struct df*,int ,int *) ;
 int fprintf (int *,char*,...) ;

void
df_regno_debug (struct df *df, unsigned int regno, FILE *file)
{
  fprintf (file, "reg %d defs ", regno);
  df_regs_chain_dump (df, DF_REG_DEF_GET (df, regno)->reg_chain, file);
  fprintf (file, " uses ");
  df_regs_chain_dump (df, DF_REG_USE_GET (df, regno)->reg_chain, file);
  fprintf (file, "\n");
}
