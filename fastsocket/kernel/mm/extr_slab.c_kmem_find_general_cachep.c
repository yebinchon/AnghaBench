
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 struct kmem_cache* __find_general_cachep (size_t,int ) ;

__attribute__((used)) static struct kmem_cache *kmem_find_general_cachep(size_t size, gfp_t gfpflags)
{
 return __find_general_cachep(size, gfpflags);
}
