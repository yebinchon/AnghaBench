
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kmem_cache {int dummy; } ;



__attribute__((used)) static inline int slab_pad_check(struct kmem_cache *s, struct page *page)
   { return 1; }
