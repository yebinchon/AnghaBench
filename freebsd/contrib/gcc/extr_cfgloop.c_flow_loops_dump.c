
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {int num; struct loop** parray; } ;
struct loop {int dummy; } ;
typedef int FILE ;


 int flow_loop_dump (struct loop*,int *,void (*) (struct loop const*,int *,int),int) ;
 int flow_loops_cfg_dump (struct loops const*,int *) ;
 int fprintf (int *,char*,int) ;

void
flow_loops_dump (const struct loops *loops, FILE *file, void (*loop_dump_aux) (const struct loop *, FILE *, int), int verbose)
{
  int i;
  int num_loops;

  num_loops = loops->num;
  if (! num_loops || ! file)
    return;

  fprintf (file, ";; %d loops found\n", num_loops);

  for (i = 0; i < num_loops; i++)
    {
      struct loop *loop = loops->parray[i];

      if (!loop)
 continue;

      flow_loop_dump (loop, file, loop_dump_aux, verbose);
    }

  if (verbose)
    flow_loops_cfg_dump (loops, file);
}
