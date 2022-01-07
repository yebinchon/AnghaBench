
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dlm_space* default_groups; } ;
struct dlm_space {TYPE_1__ group; } ;
struct config_item {int dummy; } ;


 struct dlm_space* config_item_to_space (struct config_item*) ;
 int kfree (struct dlm_space*) ;

__attribute__((used)) static void release_space(struct config_item *i)
{
 struct dlm_space *sp = config_item_to_space(i);
 kfree(sp->group.default_groups);
 kfree(sp);
}
