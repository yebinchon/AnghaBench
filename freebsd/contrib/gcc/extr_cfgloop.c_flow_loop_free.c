
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {struct loop* pred; } ;


 int free (struct loop*) ;

void
flow_loop_free (struct loop *loop)
{
  if (loop->pred)
    free (loop->pred);
  free (loop);
}
