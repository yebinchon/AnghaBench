
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_tgchk_param {char const* table; int family; int hook_mask; int targinfo; TYPE_1__* target; struct arpt_entry* entryinfo; } ;
struct TYPE_5__ {TYPE_1__* target; } ;
struct TYPE_6__ {TYPE_2__ kernel; scalar_t__ target_size; } ;
struct arpt_entry_target {TYPE_3__ u; int data; } ;
struct arpt_entry {int comefrom; } ;
struct TYPE_4__ {int name; } ;


 int NFPROTO_ARP ;
 struct arpt_entry_target* arpt_get_target (struct arpt_entry*) ;
 int duprintf (char*,int ) ;
 int xt_check_target (struct xt_tgchk_param*,scalar_t__,int ,int) ;

__attribute__((used)) static inline int check_target(struct arpt_entry *e, const char *name)
{
 struct arpt_entry_target *t = arpt_get_target(e);
 int ret;
 struct xt_tgchk_param par = {
  .table = name,
  .entryinfo = e,
  .target = t->u.kernel.target,
  .targinfo = t->data,
  .hook_mask = e->comefrom,
  .family = NFPROTO_ARP,
 };

 ret = xt_check_target(&par, t->u.target_size - sizeof(*t), 0, 0);
 if (ret < 0) {
  duprintf("arp_tables: check failed for `%s'.\n",
    t->u.kernel.target->name);
  return ret;
 }
 return 0;
}
