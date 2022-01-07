
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_app {int p_list; } ;
struct TYPE_2__ {int appcnt; } ;


 int atomic_dec (int *) ;
 TYPE_1__ ip_vs_protocol_sctp ;
 int list_del (int *) ;
 int sctp_app_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void sctp_unregister_app(struct ip_vs_app *inc)
{
 spin_lock_bh(&sctp_app_lock);
 atomic_dec(&ip_vs_protocol_sctp.appcnt);
 list_del(&inc->p_list);
 spin_unlock_bh(&sctp_app_lock);
}
