
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct uwb_rc {int uwb_dev; TYPE_1__ uwb_beca; int * cmd; int * priv; int (* stop ) (struct uwb_rc*) ;scalar_t__ ready; } ;


 int __uwb_rc_sys_rm (struct uwb_rc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct uwb_rc*) ;
 int uwb_beca_release (struct uwb_rc*) ;
 int uwb_dbg_del_rc (struct uwb_rc*) ;
 int uwb_dev_for_each (struct uwb_rc*,int ,int *) ;
 int uwb_dev_lock (int *) ;
 int uwb_dev_offair_helper ;
 int uwb_dev_rm (int *) ;
 int uwb_dev_unlock (int *) ;
 int uwb_radio_shutdown (struct uwb_rc*) ;
 int uwb_rc_neh_destroy (struct uwb_rc*) ;
 int uwb_rsv_cleanup (struct uwb_rc*) ;
 int uwb_rsv_remove_all (struct uwb_rc*) ;
 int uwbd_stop (struct uwb_rc*) ;

void uwb_rc_rm(struct uwb_rc *rc)
{
 rc->ready = 0;

 uwb_dbg_del_rc(rc);
 uwb_rsv_remove_all(rc);
 uwb_radio_shutdown(rc);

 rc->stop(rc);

 uwbd_stop(rc);
 uwb_rc_neh_destroy(rc);

 uwb_dev_lock(&rc->uwb_dev);
 rc->priv = ((void*)0);
 rc->cmd = ((void*)0);
 uwb_dev_unlock(&rc->uwb_dev);
 mutex_lock(&rc->uwb_beca.mutex);
 uwb_dev_for_each(rc, uwb_dev_offair_helper, ((void*)0));
 __uwb_rc_sys_rm(rc);
 mutex_unlock(&rc->uwb_beca.mutex);
 uwb_rsv_cleanup(rc);
  uwb_beca_release(rc);
 uwb_dev_rm(&rc->uwb_dev);
}
