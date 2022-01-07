
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int flush_cpu_slab ;
 int on_each_cpu (int ,struct kmem_cache*,int) ;

__attribute__((used)) static void flush_all(struct kmem_cache *s)
{
 on_each_cpu(flush_cpu_slab, s, 1);
}
