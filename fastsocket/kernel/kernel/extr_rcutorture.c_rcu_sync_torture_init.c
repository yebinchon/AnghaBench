
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_LIST_HEAD (int *) ;
 int rcu_torture_removed ;

__attribute__((used)) static void rcu_sync_torture_init(void)
{
 INIT_LIST_HEAD(&rcu_torture_removed);
}
