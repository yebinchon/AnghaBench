
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_mw_hardreg {scalar_t__ type; struct df_mw_hardreg* next; struct df_link* regs; } ;
struct df_link {struct df_link* next; int ref; } ;
typedef int FILE ;


 int DF_REF_REGNO (int ) ;
 scalar_t__ DF_REF_REG_DEF ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
df_mws_dump (struct df_mw_hardreg *mws, FILE *file)
{
  while (mws)
    {
      struct df_link *regs = mws->regs;
      fprintf (file, "%c%d(",
        (mws->type == DF_REF_REG_DEF) ? 'd' : 'u',
        DF_REF_REGNO (regs->ref));
      while (regs)
 {
   fprintf (file, "%d ", DF_REF_REGNO (regs->ref));
   regs = regs->next;
 }

      fprintf (file, ") ");
      mws = mws->next;
    }
}
