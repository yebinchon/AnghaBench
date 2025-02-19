
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_finalize_reco {int flags; int node_idx; int dead_node; } ;
struct TYPE_2__ {int state; int new_master; int dead_node; } ;
struct dlm_ctxt {TYPE_1__ reco; int name; int spinlock; } ;


 int BUG () ;
 int DLM_FINALIZE_STAGE2 ;
 int DLM_RECO_STATE_FINALIZE ;
 int ML_ERROR ;
 int dlm_finish_local_lockres_recovery (struct dlm_ctxt*,int ,int ) ;
 int dlm_grab (struct dlm_ctxt*) ;
 int dlm_kick_recovery_thread (struct dlm_ctxt*) ;
 int dlm_print_reco_node_status (struct dlm_ctxt*) ;
 int dlm_put (struct dlm_ctxt*) ;
 int dlm_reset_recovery (struct dlm_ctxt*) ;
 int mlog (int ,char*,int ,int ,int,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_finalize_reco_handler(struct o2net_msg *msg, u32 len, void *data,
         void **ret_data)
{
 struct dlm_ctxt *dlm = data;
 struct dlm_finalize_reco *fr = (struct dlm_finalize_reco *)msg->buf;
 int stage = 1;


 if (!dlm_grab(dlm))
  return 0;

 if (fr->flags & DLM_FINALIZE_STAGE2)
  stage = 2;

 mlog(0, "%s: node %u finalizing recovery stage%d of "
      "node %u (%u:%u)\n", dlm->name, fr->node_idx, stage,
      fr->dead_node, dlm->reco.dead_node, dlm->reco.new_master);

 spin_lock(&dlm->spinlock);

 if (dlm->reco.new_master != fr->node_idx) {
  mlog(ML_ERROR, "node %u sent recovery finalize msg, but node "
       "%u is supposed to be the new master, dead=%u\n",
       fr->node_idx, dlm->reco.new_master, fr->dead_node);
  BUG();
 }
 if (dlm->reco.dead_node != fr->dead_node) {
  mlog(ML_ERROR, "node %u sent recovery finalize msg for dead "
       "node %u, but node %u is supposed to be dead\n",
       fr->node_idx, fr->dead_node, dlm->reco.dead_node);
  BUG();
 }

 switch (stage) {
  case 1:
   dlm_finish_local_lockres_recovery(dlm, fr->dead_node, fr->node_idx);
   if (dlm->reco.state & DLM_RECO_STATE_FINALIZE) {
    mlog(ML_ERROR, "%s: received finalize1 from "
         "new master %u for dead node %u, but "
         "this node has already received it!\n",
         dlm->name, fr->node_idx, fr->dead_node);
    dlm_print_reco_node_status(dlm);
    BUG();
   }
   dlm->reco.state |= DLM_RECO_STATE_FINALIZE;
   spin_unlock(&dlm->spinlock);
   break;
  case 2:
   if (!(dlm->reco.state & DLM_RECO_STATE_FINALIZE)) {
    mlog(ML_ERROR, "%s: received finalize2 from "
         "new master %u for dead node %u, but "
         "this node did not have finalize1!\n",
         dlm->name, fr->node_idx, fr->dead_node);
    dlm_print_reco_node_status(dlm);
    BUG();
   }
   dlm->reco.state &= ~DLM_RECO_STATE_FINALIZE;
   spin_unlock(&dlm->spinlock);
   dlm_reset_recovery(dlm);
   dlm_kick_recovery_thread(dlm);
   break;
  default:
   BUG();
 }

 mlog(0, "%s: recovery done, reco master was %u, dead now %u, master now %u\n",
      dlm->name, fr->node_idx, dlm->reco.dead_node, dlm->reco.new_master);

 dlm_put(dlm);
 return 0;
}
