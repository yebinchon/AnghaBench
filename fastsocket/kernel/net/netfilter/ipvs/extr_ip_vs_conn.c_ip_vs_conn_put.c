
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {unsigned long timeout; int flags; int timer; } ;


 int IP_VS_CONN_F_ONE_PACKET ;
 int __ip_vs_conn_put (struct ip_vs_conn*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void ip_vs_conn_put(struct ip_vs_conn *cp)
{
 unsigned long timeout = cp->timeout;

 if (cp->flags & IP_VS_CONN_F_ONE_PACKET)
  timeout = 0;


 mod_timer(&cp->timer, jiffies+timeout);

 __ip_vs_conn_put(cp);
}
