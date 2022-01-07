
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_congestion_ops {int list; } ;


 int list_del_rcu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcp_cong_list_lock ;

void tcp_unregister_congestion_control(struct tcp_congestion_ops *ca)
{
 spin_lock(&tcp_cong_list_lock);
 list_del_rcu(&ca->list);
 spin_unlock(&tcp_cong_list_lock);
}
