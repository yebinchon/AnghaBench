
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ggc_cache_tab {int (* cb ) (void*) ;int * base; int (* marked_p ) (void*) ;} ;


 int htab_clear_slot (int ,void**) ;
 int stub1 (void*) ;
 int stub2 (void*) ;

__attribute__((used)) static int
ggc_htab_delete (void **slot, void *info)
{
  const struct ggc_cache_tab *r = (const struct ggc_cache_tab *) info;

  if (! (*r->marked_p) (*slot))
    htab_clear_slot (*r->base, slot);
  else
    (*r->cb) (*slot);

  return 1;
}
