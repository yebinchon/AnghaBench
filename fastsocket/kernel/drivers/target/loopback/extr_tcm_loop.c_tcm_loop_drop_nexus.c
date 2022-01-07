
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcm_loop_tpg {struct tcm_loop_hba* tl_hba; int tl_tpg_port_count; } ;
struct tcm_loop_nexus {struct se_session* se_sess; } ;
struct tcm_loop_hba {struct tcm_loop_nexus* tl_nexus; } ;
struct se_session {TYPE_1__* se_node_acl; } ;
struct TYPE_2__ {int initiatorname; } ;


 int ENODEV ;
 int EPERM ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct tcm_loop_nexus*) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,scalar_t__) ;
 int tcm_loop_dump_proto_id (struct tcm_loop_hba*) ;
 int transport_deregister_session (struct se_session*) ;

__attribute__((used)) static int tcm_loop_drop_nexus(
 struct tcm_loop_tpg *tpg)
{
 struct se_session *se_sess;
 struct tcm_loop_nexus *tl_nexus;
 struct tcm_loop_hba *tl_hba = tpg->tl_hba;

 tl_nexus = tpg->tl_hba->tl_nexus;
 if (!tl_nexus)
  return -ENODEV;

 se_sess = tl_nexus->se_sess;
 if (!se_sess)
  return -ENODEV;

 if (atomic_read(&tpg->tl_tpg_port_count)) {
  pr_err("Unable to remove TCM_Loop I_T Nexus with"
   " active TPG port count: %d\n",
   atomic_read(&tpg->tl_tpg_port_count));
  return -EPERM;
 }

 pr_debug("TCM_Loop_ConfigFS: Removing I_T Nexus to emulated"
  " %s Initiator Port: %s\n", tcm_loop_dump_proto_id(tl_hba),
  tl_nexus->se_sess->se_node_acl->initiatorname);



 transport_deregister_session(tl_nexus->se_sess);
 tpg->tl_hba->tl_nexus = ((void*)0);
 kfree(tl_nexus);
 return 0;
}
