
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_srcu_struct (int *) ;
 int rcu_sync_torture_init () ;
 int srcu_ctl ;

__attribute__((used)) static void srcu_torture_init(void)
{
 init_srcu_struct(&srcu_ctl);
 rcu_sync_torture_init();
}
