
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {unsigned int num; struct loop** parray; } ;
struct loop {int parallel_p; } ;



__attribute__((used)) static void
initialize_loops_parallel_p (struct loops *loops)
{
  unsigned int i;

  for (i = 0; i < loops->num; i++)
    {
      struct loop *loop = loops->parray[i];
      loop->parallel_p = 1;
    }
}
