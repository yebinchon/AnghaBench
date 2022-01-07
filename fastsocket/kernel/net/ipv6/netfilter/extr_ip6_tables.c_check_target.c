
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xt_tgchk_param {char const* table; int family; int hook_mask; int targinfo; TYPE_2__* target; struct ip6t_entry* entryinfo; } ;
struct TYPE_7__ {TYPE_2__* target; } ;
struct TYPE_8__ {TYPE_3__ kernel; scalar_t__ target_size; } ;
struct ip6t_entry_target {TYPE_4__ u; int data; } ;
struct TYPE_5__ {int invflags; int proto; } ;
struct ip6t_entry {TYPE_1__ ipv6; int comefrom; } ;
struct TYPE_6__ {int name; } ;


 int IP6T_INV_PROTO ;
 int NFPROTO_IPV6 ;
 int duprintf (char*,int ) ;
 struct ip6t_entry_target* ip6t_get_target (struct ip6t_entry*) ;
 int xt_check_target (struct xt_tgchk_param*,scalar_t__,int ,int) ;

__attribute__((used)) static int check_target(struct ip6t_entry *e, const char *name)
{
 struct ip6t_entry_target *t = ip6t_get_target(e);
 struct xt_tgchk_param par = {
  .table = name,
  .entryinfo = e,
  .target = t->u.kernel.target,
  .targinfo = t->data,
  .hook_mask = e->comefrom,
  .family = NFPROTO_IPV6,
 };
 int ret;

 t = ip6t_get_target(e);
 ret = xt_check_target(&par, t->u.target_size - sizeof(*t),
       e->ipv6.proto, e->ipv6.invflags & IP6T_INV_PROTO);
 if (ret < 0) {
  duprintf("ip_tables: check failed for `%s'.\n",
    t->u.kernel.target->name);
  return ret;
 }
 return 0;
}
