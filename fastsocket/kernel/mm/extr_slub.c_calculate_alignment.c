
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ALIGN (unsigned long,int) ;
 unsigned long ARCH_SLAB_MINALIGN ;
 unsigned long SLAB_HWCACHE_ALIGN ;
 unsigned long cache_line_size () ;
 unsigned long max (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long calculate_alignment(unsigned long flags,
  unsigned long align, unsigned long size)
{







 if (flags & SLAB_HWCACHE_ALIGN) {
  unsigned long ralign = cache_line_size();
  while (size <= ralign / 2)
   ralign /= 2;
  align = max(align, ralign);
 }

 if (align < ARCH_SLAB_MINALIGN)
  align = ARCH_SLAB_MINALIGN;

 return ALIGN(align, sizeof(void *));
}
