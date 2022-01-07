
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fscache_state {int dummy; } ;
struct fscache_object {TYPE_2__* cache; int debug_id; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* update_object ) (struct fscache_object*) ;} ;


 int WAIT_FOR_CMD ;
 int _enter (char*,int ,int) ;
 int _leave (char*) ;
 int fscache_n_cop_update_object ;
 int fscache_n_updates_run ;
 int fscache_stat (int *) ;
 int fscache_stat_d (int *) ;
 int stub1 (struct fscache_object*) ;
 struct fscache_state const* transit_to (int ) ;

__attribute__((used)) static const struct fscache_state *fscache_update_object(struct fscache_object *object,
        int event)
{
 _enter("{OBJ%x},%d", object->debug_id, event);

 fscache_stat(&fscache_n_updates_run);
 fscache_stat(&fscache_n_cop_update_object);
 object->cache->ops->update_object(object);
 fscache_stat_d(&fscache_n_cop_update_object);

 _leave("");
 return transit_to(WAIT_FOR_CMD);
}
