
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_app {int p_list; } ;
struct TYPE_2__ {int appcnt; } ;


 int atomic_dec (int *) ;
 TYPE_1__ ip_vs_protocol_tcp ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcp_app_lock ;

__attribute__((used)) static void
tcp_unregister_app(struct ip_vs_app *inc)
{
 spin_lock_bh(&tcp_app_lock);
 atomic_dec(&ip_vs_protocol_tcp.appcnt);
 list_del(&inc->p_list);
 spin_unlock_bh(&tcp_app_lock);
}
