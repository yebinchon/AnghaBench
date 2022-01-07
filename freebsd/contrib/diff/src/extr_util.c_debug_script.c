
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct change {long line0; long line1; long deleted; long inserted; struct change* link; } ;


 int fflush (int ) ;
 int fprintf (int ,char*,long,long,long,long) ;
 int stderr ;
 int stdout ;

void
debug_script (struct change *sp)
{
  fflush (stdout);

  for (; sp; sp = sp->link)
    {
      long int line0 = sp->line0;
      long int line1 = sp->line1;
      long int deleted = sp->deleted;
      long int inserted = sp->inserted;
      fprintf (stderr, "%3ld %3ld delete %ld insert %ld\n",
        line0, line1, deleted, inserted);
    }

  fflush (stderr);
}
