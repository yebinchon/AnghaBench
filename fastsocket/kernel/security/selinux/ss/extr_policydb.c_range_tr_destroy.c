
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mls_range {TYPE_1__* level; } ;
struct TYPE_2__ {int cat; } ;


 int cond_resched () ;
 int ebitmap_destroy (int *) ;
 int kfree (void*) ;

__attribute__((used)) static int range_tr_destroy(void *key, void *datum, void *p)
{
 struct mls_range *rt = datum;
 kfree(key);
 ebitmap_destroy(&rt->level[0].cat);
 ebitmap_destroy(&rt->level[1].cat);
 kfree(datum);
 cond_resched();
 return 0;
}
