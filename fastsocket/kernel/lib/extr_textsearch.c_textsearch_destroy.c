
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ts_config {TYPE_1__* ops; } ;
struct TYPE_2__ {int owner; int (* destroy ) (struct ts_config*) ;} ;


 int kfree (struct ts_config*) ;
 int module_put (int ) ;
 int stub1 (struct ts_config*) ;

void textsearch_destroy(struct ts_config *conf)
{
 if (conf->ops) {
  if (conf->ops->destroy)
   conf->ops->destroy(conf);
  module_put(conf->ops->owner);
 }

 kfree(conf);
}
