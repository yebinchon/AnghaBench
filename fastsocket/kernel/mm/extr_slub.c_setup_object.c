
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kmem_cache {int (* ctor ) (void*) ;} ;


 int setup_object_debug (struct kmem_cache*,struct page*,void*) ;
 int stub1 (void*) ;
 scalar_t__ unlikely (int (*) (void*)) ;

__attribute__((used)) static void setup_object(struct kmem_cache *s, struct page *page,
    void *object)
{
 setup_object_debug(s, page, object);
 if (unlikely(s->ctor))
  s->ctor(object);
}
