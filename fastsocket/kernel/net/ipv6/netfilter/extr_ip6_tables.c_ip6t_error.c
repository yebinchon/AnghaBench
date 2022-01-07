
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {scalar_t__ targinfo; } ;
struct sk_buff {int dummy; } ;


 unsigned int NF_DROP ;
 scalar_t__ net_ratelimit () ;
 int printk (char*,char const*) ;

__attribute__((used)) static unsigned int
ip6t_error(struct sk_buff *skb, const struct xt_target_param *par)
{
 if (net_ratelimit())
  printk("ip6_tables: error: `%s'\n",
         (const char *)par->targinfo);

 return NF_DROP;
}
