
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_notifier_head {int * head; int srcu; int mutex; } ;


 int BUG () ;
 scalar_t__ init_srcu_struct (int *) ;
 int mutex_init (int *) ;

void srcu_init_notifier_head(struct srcu_notifier_head *nh)
{
 mutex_init(&nh->mutex);
 if (init_srcu_struct(&nh->srcu) < 0)
  BUG();
 nh->head = ((void*)0);
}
