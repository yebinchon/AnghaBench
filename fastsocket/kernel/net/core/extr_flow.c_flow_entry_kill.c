
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct flow_cache_entry {TYPE_2__* object; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* delete ) (TYPE_2__*) ;} ;


 int flow_cachep ;
 int kmem_cache_free (int ,struct flow_cache_entry*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void flow_entry_kill(struct flow_cache_entry *fle)
{
 if (fle->object)
  fle->object->ops->delete(fle->object);
 kmem_cache_free(flow_cachep, fle);
}
