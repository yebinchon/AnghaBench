
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_protocol {int (* state_transition ) (struct ip_vs_conn*,int,struct sk_buff const*,struct ip_vs_protocol*) ;} ;
struct ip_vs_conn {int dummy; } ;


 int stub1 (struct ip_vs_conn*,int,struct sk_buff const*,struct ip_vs_protocol*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
ip_vs_set_state(struct ip_vs_conn *cp, int direction,
  const struct sk_buff *skb,
  struct ip_vs_protocol *pp)
{
 if (unlikely(!pp->state_transition))
  return 0;
 return pp->state_transition(cp, direction, skb, pp);
}
