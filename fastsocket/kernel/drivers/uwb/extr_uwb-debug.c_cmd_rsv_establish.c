
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct uwb_dev* dev; int type; } ;
struct uwb_rsv {int pal_node; int max_interval; int min_mas; int max_mas; int type; TYPE_1__ target; } ;
struct uwb_rc {TYPE_2__* dbg; } ;
struct uwb_mac_addr {int dummy; } ;
struct uwb_dev {int dummy; } ;
struct uwb_dbg_cmd_rsv_establish {int max_interval; int min_mas; int max_mas; int type; int target; } ;
typedef int macaddr ;
struct TYPE_4__ {int list_lock; int rsvs; } ;


 int ENODEV ;
 int ENOMEM ;
 int UWB_RSV_TARGET_DEV ;
 int list_add_tail (int *,int *) ;
 int memcpy (struct uwb_mac_addr*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uwb_dbg_rsv_cb ;
 struct uwb_dev* uwb_dev_get_by_macaddr (struct uwb_rc*,struct uwb_mac_addr*) ;
 int uwb_dev_put (struct uwb_dev*) ;
 struct uwb_rsv* uwb_rsv_create (struct uwb_rc*,int ,TYPE_2__*) ;
 int uwb_rsv_destroy (struct uwb_rsv*) ;
 int uwb_rsv_establish (struct uwb_rsv*) ;

__attribute__((used)) static int cmd_rsv_establish(struct uwb_rc *rc,
        struct uwb_dbg_cmd_rsv_establish *cmd)
{
 struct uwb_mac_addr macaddr;
 struct uwb_rsv *rsv;
 struct uwb_dev *target;
 int ret;

 memcpy(&macaddr, cmd->target, sizeof(macaddr));
 target = uwb_dev_get_by_macaddr(rc, &macaddr);
 if (target == ((void*)0))
  return -ENODEV;

 rsv = uwb_rsv_create(rc, uwb_dbg_rsv_cb, rc->dbg);
 if (rsv == ((void*)0)) {
  uwb_dev_put(target);
  return -ENOMEM;
 }

 rsv->target.type = UWB_RSV_TARGET_DEV;
 rsv->target.dev = target;
 rsv->type = cmd->type;
 rsv->max_mas = cmd->max_mas;
 rsv->min_mas = cmd->min_mas;
 rsv->max_interval = cmd->max_interval;

 ret = uwb_rsv_establish(rsv);
 if (ret)
  uwb_rsv_destroy(rsv);
 else {
  spin_lock(&(rc->dbg)->list_lock);
  list_add_tail(&rsv->pal_node, &rc->dbg->rsvs);
  spin_unlock(&(rc->dbg)->list_lock);
 }
 return ret;
}
