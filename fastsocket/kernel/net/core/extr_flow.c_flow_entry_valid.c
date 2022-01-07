
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct flow_cache_entry {scalar_t__ genid; TYPE_2__* object; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* check ) (TYPE_2__*) ;} ;


 scalar_t__ atomic_read (int *) ;
 int flow_cache_genid ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int flow_entry_valid(struct flow_cache_entry *fle)
{
 if (atomic_read(&flow_cache_genid) != fle->genid)
  return 0;
 if (fle->object && !fle->object->ops->check(fle->object))
  return 0;
 return 1;
}
