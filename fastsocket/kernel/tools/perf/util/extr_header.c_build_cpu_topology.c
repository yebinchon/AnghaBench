
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpu_topo {void* thread_siblings; void* core_siblings; } ;


 long UINT_MAX ;
 int _SC_NPROCESSORS_CONF ;
 int build_cpu_topo (struct cpu_topo*,int) ;
 void* calloc (int,int) ;
 int free_cpu_topo (struct cpu_topo*) ;
 long sysconf (int ) ;

__attribute__((used)) static struct cpu_topo *build_cpu_topology(void)
{
 struct cpu_topo *tp;
 void *addr;
 u32 nr, i;
 size_t sz;
 long ncpus;
 int ret = -1;

 ncpus = sysconf(_SC_NPROCESSORS_CONF);
 if (ncpus < 0)
  return ((void*)0);

 nr = (u32)(ncpus & UINT_MAX);

 sz = nr * sizeof(char *);

 addr = calloc(1, sizeof(*tp) + 2 * sz);
 if (!addr)
  return ((void*)0);

 tp = addr;

 addr += sizeof(*tp);
 tp->core_siblings = addr;
 addr += sz;
 tp->thread_siblings = addr;

 for (i = 0; i < nr; i++) {
  ret = build_cpu_topo(tp, i);
  if (ret < 0)
   break;
 }
 if (ret) {
  free_cpu_topo(tp);
  tp = ((void*)0);
 }
 return tp;
}
