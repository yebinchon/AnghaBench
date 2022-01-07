
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_conn {int lock; } ;


 int set_sctp_state (struct ip_vs_protocol*,struct ip_vs_conn*,int,struct sk_buff const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
sctp_state_transition(struct ip_vs_conn *cp, int direction,
  const struct sk_buff *skb, struct ip_vs_protocol *pp)
{
 int ret = 0;

 spin_lock(&cp->lock);
 ret = set_sctp_state(pp, cp, direction, skb);
 spin_unlock(&cp->lock);

 return ret;
}
