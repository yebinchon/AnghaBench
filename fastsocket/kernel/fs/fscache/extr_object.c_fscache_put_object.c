
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fscache_object {TYPE_2__* cache; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* put_object ) (struct fscache_object*) ;} ;


 int fscache_n_cop_put_object ;
 int fscache_stat (int *) ;
 int fscache_stat_d (int *) ;
 int stub1 (struct fscache_object*) ;

__attribute__((used)) static void fscache_put_object(struct fscache_object *object)
{
 fscache_stat(&fscache_n_cop_put_object);
 object->cache->ops->put_object(object);
 fscache_stat_d(&fscache_n_cop_put_object);
}
