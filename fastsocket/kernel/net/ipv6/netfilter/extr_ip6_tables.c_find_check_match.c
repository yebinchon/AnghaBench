
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_mtchk_param {int dummy; } ;
struct xt_match {int me; } ;
struct TYPE_4__ {struct xt_match* match; } ;
struct TYPE_6__ {int name; int revision; } ;
struct TYPE_5__ {TYPE_1__ kernel; TYPE_3__ user; } ;
struct ip6t_entry_match {TYPE_2__ u; } ;


 int AF_INET6 ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct xt_match*) ;
 int PTR_ERR (struct xt_match*) ;
 int check_match (struct ip6t_entry_match*,struct xt_mtchk_param*,unsigned int*) ;
 int duprintf (char*,int ) ;
 int module_put (int ) ;
 struct xt_match* try_then_request_module (int ,char*,int ) ;
 int xt_find_match (int ,int ,int ) ;

__attribute__((used)) static int
find_check_match(struct ip6t_entry_match *m, struct xt_mtchk_param *par,
   unsigned int *i)
{
 struct xt_match *match;
 int ret;

 match = try_then_request_module(xt_find_match(AF_INET6, m->u.user.name,
            m->u.user.revision),
     "ip6t_%s", m->u.user.name);
 if (IS_ERR(match) || !match) {
  duprintf("find_check_match: `%s' not found\n", m->u.user.name);
  return match ? PTR_ERR(match) : -ENOENT;
 }
 m->u.kernel.match = match;

 ret = check_match(m, par, i);
 if (ret)
  goto err;

 return 0;
err:
 module_put(m->u.kernel.match->me);
 return ret;
}
