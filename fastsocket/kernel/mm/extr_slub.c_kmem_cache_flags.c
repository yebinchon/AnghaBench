
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long kmem_cache_flags(unsigned long objsize,
 unsigned long flags, const char *name,
 void (*ctor)(void *))
{
 return flags;
}
