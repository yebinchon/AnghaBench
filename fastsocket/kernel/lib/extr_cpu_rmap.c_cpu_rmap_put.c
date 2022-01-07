
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_rmap {int refcount; } ;


 int cpu_rmap_release ;
 int kref_put (int *,int ) ;

int cpu_rmap_put(struct cpu_rmap *rmap)
{
 return kref_put(&rmap->refcount, cpu_rmap_release);
}
