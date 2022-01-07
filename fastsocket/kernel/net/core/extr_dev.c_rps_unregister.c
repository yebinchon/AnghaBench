
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif_rps_entry {int (* rps_uninit ) () ;int list; } ;


 int list_del_rcu (int *) ;
 int rps_table_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 () ;

int rps_unregister(struct netif_rps_entry *re)
{
 spin_lock(&rps_table_lock);
 list_del_rcu(&re->list);
 spin_unlock(&rps_table_lock);

 if (re->rps_uninit)
  re->rps_uninit();

 return 0;
}
