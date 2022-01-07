
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {char const* name; } ;



const char *kmem_cache_name(struct kmem_cache *c)
{
 return c->name;
}
