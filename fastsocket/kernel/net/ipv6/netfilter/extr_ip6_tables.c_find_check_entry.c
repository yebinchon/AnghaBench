
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_target {int me; } ;
struct xt_mtchk_param {char const* table; int family; int hook_mask; int * entryinfo; } ;
struct TYPE_5__ {struct xt_target* target; } ;
struct TYPE_4__ {int name; int revision; } ;
struct TYPE_6__ {TYPE_2__ kernel; TYPE_1__ user; } ;
struct ip6t_entry_target {TYPE_3__ u; } ;
struct ip6t_entry {int comefrom; int ipv6; } ;


 int AF_INET6 ;
 int ENOENT ;
 int IP6T_MATCH_ITERATE (struct ip6t_entry*,int ,...) ;
 scalar_t__ IS_ERR (struct xt_target*) ;
 int NFPROTO_IPV6 ;
 int PTR_ERR (struct xt_target*) ;
 int check_entry (struct ip6t_entry*,char const*) ;
 int check_target (struct ip6t_entry*,char const*) ;
 int cleanup_match ;
 int duprintf (char*,int ) ;
 int find_check_match ;
 struct ip6t_entry_target* ip6t_get_target (struct ip6t_entry*) ;
 int module_put (int ) ;
 struct xt_target* try_then_request_module (int ,char*,int ) ;
 int xt_find_target (int ,int ,int ) ;

__attribute__((used)) static int
find_check_entry(struct ip6t_entry *e, const char *name, unsigned int size,
   unsigned int *i)
{
 struct ip6t_entry_target *t;
 struct xt_target *target;
 int ret;
 unsigned int j;
 struct xt_mtchk_param mtpar;

 ret = check_entry(e, name);
 if (ret)
  return ret;

 j = 0;
 mtpar.table = name;
 mtpar.entryinfo = &e->ipv6;
 mtpar.hook_mask = e->comefrom;
 mtpar.family = NFPROTO_IPV6;
 ret = IP6T_MATCH_ITERATE(e, find_check_match, &mtpar, &j);
 if (ret != 0)
  goto cleanup_matches;

 t = ip6t_get_target(e);
 target = try_then_request_module(xt_find_target(AF_INET6,
       t->u.user.name,
       t->u.user.revision),
      "ip6t_%s", t->u.user.name);
 if (IS_ERR(target) || !target) {
  duprintf("find_check_entry: `%s' not found\n", t->u.user.name);
  ret = target ? PTR_ERR(target) : -ENOENT;
  goto cleanup_matches;
 }
 t->u.kernel.target = target;

 ret = check_target(e, name);
 if (ret)
  goto err;

 (*i)++;
 return 0;
 err:
 module_put(t->u.kernel.target->me);
 cleanup_matches:
 IP6T_MATCH_ITERATE(e, cleanup_match, &j);
 return ret;
}
