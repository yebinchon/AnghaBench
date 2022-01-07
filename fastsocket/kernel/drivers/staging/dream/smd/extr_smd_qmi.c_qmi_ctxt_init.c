
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct qmi_ctxt {int ctl_txn_id; int wds_txn_id; int wds_busy; int state; TYPE_1__ misc; int wake_lock; int open_work; int read_work; int lock; } ;


 int INIT_WORK (int *,int ) ;
 int STATE_OFFLINE ;
 int WAKE_LOCK_SUSPEND ;
 int mutex_init (int *) ;
 int qmi_open_work ;
 int qmi_read_work ;
 int wake_lock_init (int *,int ,int ) ;

void qmi_ctxt_init(struct qmi_ctxt *ctxt, unsigned n)
{
 mutex_init(&ctxt->lock);
 INIT_WORK(&ctxt->read_work, qmi_read_work);
 INIT_WORK(&ctxt->open_work, qmi_open_work);
 wake_lock_init(&ctxt->wake_lock, WAKE_LOCK_SUSPEND, ctxt->misc.name);
 ctxt->ctl_txn_id = 1;
 ctxt->wds_txn_id = 1;
 ctxt->wds_busy = 1;
 ctxt->state = STATE_OFFLINE;

}
