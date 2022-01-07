
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {int num; struct loop** parray; } ;
struct loop {scalar_t__ inner; } ;


 int CDI_DOMINATORS ;
 int NULL_RTX ;
 int iv_analysis_done () ;
 int unswitch_single_loop (struct loops*,struct loop*,int ,int ) ;
 int verify_dominators (int ) ;
 int verify_loop_structure (struct loops*) ;

void
unswitch_loops (struct loops *loops)
{
  int i, num;
  struct loop *loop;


  num = loops->num;

  for (i = 1; i < num; i++)
    {

      loop = loops->parray[i];
      if (!loop)
 continue;

      if (loop->inner)
 continue;

      unswitch_single_loop (loops, loop, NULL_RTX, 0);




    }

  iv_analysis_done ();
}
