
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct loop** rc_order; struct loop** dfs_order; } ;
struct loops {unsigned int num; TYPE_1__ cfg; struct loop** parray; } ;
struct loop {int dummy; } ;


 int flow_loop_free (struct loop*) ;
 int free (struct loop**) ;
 int gcc_assert (unsigned int) ;

void
flow_loops_free (struct loops *loops)
{
  if (loops->parray)
    {
      unsigned i;

      gcc_assert (loops->num);


      for (i = 0; i < loops->num; i++)
 {
   struct loop *loop = loops->parray[i];

   if (!loop)
     continue;

   flow_loop_free (loop);
 }

      free (loops->parray);
      loops->parray = ((void*)0);

      if (loops->cfg.dfs_order)
 free (loops->cfg.dfs_order);
      if (loops->cfg.rc_order)
 free (loops->cfg.rc_order);

    }
}
