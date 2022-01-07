
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kmem_cache {int dummy; } ;



__attribute__((used)) static inline int alloc_debug_processing(struct kmem_cache *s,
 struct page *page, void *object, unsigned long addr) { return 0; }
