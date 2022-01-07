
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccupdate_struct {struct array_cache** new; TYPE_1__* cachep; } ;
struct array_cache {int dummy; } ;
struct TYPE_2__ {struct array_cache** array; } ;


 int check_irq_off () ;
 struct array_cache* cpu_cache_get (TYPE_1__*) ;
 size_t smp_processor_id () ;

__attribute__((used)) static void do_ccupdate_local(void *info)
{
 struct ccupdate_struct *new = info;
 struct array_cache *old;

 check_irq_off();
 old = cpu_cache_get(new->cachep);

 new->cachep->array[smp_processor_id()] = new->new[smp_processor_id()];
 new->new[smp_processor_id()] = old;
}
