
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int used ;
typedef int u_int8_t ;
struct xt_mtchk_param {size_t family; int hook_mask; TYPE_1__* match; int table; } ;
typedef int allow ;
struct TYPE_2__ {int matchsize; int hooks; int (* checkentry ) (struct xt_mtchk_param*) ;int proto; int name; int * table; } ;


 int EINVAL ;
 unsigned int XT_ALIGN (int) ;
 int pr_err (char*,int ,int ,unsigned int,...) ;
 scalar_t__ strcmp (int *,int ) ;
 int stub1 (struct xt_mtchk_param*) ;
 int textify_hooks (char*,int,int) ;
 int * xt_prefix ;

int xt_check_match(struct xt_mtchk_param *par,
     unsigned int size, u_int8_t proto, bool inv_proto)
{
 if (XT_ALIGN(par->match->matchsize) != size &&
     par->match->matchsize != -1) {




  pr_err("%s_tables: %s match: invalid size %Zu != %u\n",
         xt_prefix[par->family], par->match->name,
         XT_ALIGN(par->match->matchsize), size);
  return -EINVAL;
 }
 if (par->match->table != ((void*)0) &&
     strcmp(par->match->table, par->table) != 0) {
  pr_err("%s_tables: %s match: only valid in %s table, not %s\n",
         xt_prefix[par->family], par->match->name,
         par->match->table, par->table);
  return -EINVAL;
 }
 if (par->match->hooks && (par->hook_mask & ~par->match->hooks) != 0) {
  char used[64], allow[64];

  pr_err("%s_tables: %s match: used from hooks %s, but only "
         "valid from %s\n",
         xt_prefix[par->family], par->match->name,
         textify_hooks(used, sizeof(used), par->hook_mask),
         textify_hooks(allow, sizeof(allow), par->match->hooks));
  return -EINVAL;
 }
 if (par->match->proto && (par->match->proto != proto || inv_proto)) {
  pr_err("%s_tables: %s match: only valid for protocol %u\n",
         xt_prefix[par->family], par->match->name,
         par->match->proto);
  return -EINVAL;
 }
 if (par->match->checkentry != ((void*)0) && !par->match->checkentry(par))
  return -EINVAL;
 return 0;
}
