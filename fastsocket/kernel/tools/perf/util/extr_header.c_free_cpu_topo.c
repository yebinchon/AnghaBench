
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cpu_topo {size_t core_sib; size_t thread_sib; struct cpu_topo** thread_siblings; struct cpu_topo** core_siblings; } ;


 int free (struct cpu_topo*) ;

__attribute__((used)) static void free_cpu_topo(struct cpu_topo *tp)
{
 u32 i;

 if (!tp)
  return;

 for (i = 0 ; i < tp->core_sib; i++)
  free(tp->core_siblings[i]);

 for (i = 0 ; i < tp->thread_sib; i++)
  free(tp->thread_siblings[i]);

 free(tp);
}
