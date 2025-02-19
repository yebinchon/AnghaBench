
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_target {int me; } ;
struct TYPE_5__ {struct xt_target* target; } ;
struct TYPE_4__ {int name; int revision; } ;
struct TYPE_6__ {TYPE_2__ kernel; TYPE_1__ user; } ;
struct arpt_entry_target {TYPE_3__ u; } ;
struct arpt_entry {int dummy; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct xt_target*) ;
 int NFPROTO_ARP ;
 int PTR_ERR (struct xt_target*) ;
 struct arpt_entry_target* arpt_get_target (struct arpt_entry*) ;
 int check_entry (struct arpt_entry*,char const*) ;
 int check_target (struct arpt_entry*,char const*) ;
 int duprintf (char*,int ) ;
 int module_put (int ) ;
 struct xt_target* try_then_request_module (int ,char*,int ) ;
 int xt_find_target (int ,int ,int ) ;

__attribute__((used)) static inline int
find_check_entry(struct arpt_entry *e, const char *name, unsigned int size,
   unsigned int *i)
{
 struct arpt_entry_target *t;
 struct xt_target *target;
 int ret;

 ret = check_entry(e, name);
 if (ret)
  return ret;

 t = arpt_get_target(e);
 target = try_then_request_module(xt_find_target(NFPROTO_ARP,
       t->u.user.name,
       t->u.user.revision),
      "arpt_%s", t->u.user.name);
 if (IS_ERR(target) || !target) {
  duprintf("find_check_entry: `%s' not found\n", t->u.user.name);
  ret = target ? PTR_ERR(target) : -ENOENT;
  goto out;
 }
 t->u.kernel.target = target;

 ret = check_target(e, name);
 if (ret)
  goto err;

 (*i)++;
 return 0;
err:
 module_put(t->u.kernel.target->me);
out:
 return ret;
}
