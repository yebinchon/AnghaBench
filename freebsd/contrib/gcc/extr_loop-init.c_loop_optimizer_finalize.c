
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {unsigned int num; scalar_t__* parray; } ;


 int flow_loops_free (struct loops*) ;
 int free (struct loops*) ;
 int free_simple_loop_desc (scalar_t__) ;
 int verify_flow_info () ;

void
loop_optimizer_finalize (struct loops *loops)
{
  unsigned i;

  if (!loops)
    return;

  for (i = 1; i < loops->num; i++)
    if (loops->parray[i])
      free_simple_loop_desc (loops->parray[i]);


  flow_loops_free (loops);
  free (loops);





}
