
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_tgchk_param {struct ip6t_entry* entryinfo; struct ip6t_reject_info* targinfo; } ;
struct ip6t_reject_info {scalar_t__ with; } ;
struct TYPE_2__ {scalar_t__ proto; int invflags; } ;
struct ip6t_entry {TYPE_1__ ipv6; } ;


 scalar_t__ IP6T_ICMP6_ECHOREPLY ;
 scalar_t__ IP6T_TCP_RESET ;
 scalar_t__ IPPROTO_TCP ;
 int XT_INV_PROTO ;
 int printk (char*) ;

__attribute__((used)) static bool reject_tg6_check(const struct xt_tgchk_param *par)
{
 const struct ip6t_reject_info *rejinfo = par->targinfo;
 const struct ip6t_entry *e = par->entryinfo;

 if (rejinfo->with == IP6T_ICMP6_ECHOREPLY) {
  printk("ip6t_REJECT: ECHOREPLY is not supported.\n");
  return 0;
 } else if (rejinfo->with == IP6T_TCP_RESET) {

  if (e->ipv6.proto != IPPROTO_TCP
      || (e->ipv6.invflags & XT_INV_PROTO)) {
   printk("ip6t_REJECT: TCP_RESET illegal for non-tcp\n");
   return 0;
  }
 }
 return 1;
}
