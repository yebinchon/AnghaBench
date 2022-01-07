
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int timer; } ;


 scalar_t__ del_timer (int *) ;
 int jiffies ;
 int mod_timer (int *,int ) ;

void ip_vs_conn_expire_now(struct ip_vs_conn *cp)
{
 if (del_timer(&cp->timer))
  mod_timer(&cp->timer, jiffies);
}
