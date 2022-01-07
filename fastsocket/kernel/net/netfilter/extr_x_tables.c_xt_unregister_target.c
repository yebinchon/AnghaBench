
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct xt_target {size_t family; int list; } ;
struct TYPE_2__ {int mutex; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* xt ;

void
xt_unregister_target(struct xt_target *target)
{
 u_int8_t af = target->family;

 mutex_lock(&xt[af].mutex);
 list_del(&target->list);
 mutex_unlock(&xt[af].mutex);
}
