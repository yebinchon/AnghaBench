
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct xt_match {size_t family; int list; } ;
struct TYPE_2__ {int mutex; int match; } ;


 int list_add (int *,int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* xt ;

int
xt_register_match(struct xt_match *match)
{
 u_int8_t af = match->family;
 int ret;

 ret = mutex_lock_interruptible(&xt[af].mutex);
 if (ret != 0)
  return ret;

 list_add(&match->list, &xt[af].match);
 mutex_unlock(&xt[af].mutex);

 return ret;
}
