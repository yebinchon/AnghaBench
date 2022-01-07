
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * fabric_drop_np; int * fabric_make_np; int * fabric_pre_unlink; int * fabric_post_link; int * fabric_drop_tpg; int * fabric_make_tpg; int * fabric_drop_wwn; int * fabric_make_wwn; int * queue_tm_rsp; int * queue_status; int * queue_data_in; int * get_cmd_state; int * get_task_tag; int * set_default_node_attributes; int * write_pending_status; int * write_pending; int * sess_get_initiator_sid; int * sess_get_index; int * close_session; int * shutdown_session; int * release_cmd; int * check_stop_free; int * tpg_get_inst_index; int * tpg_release_fabric_acl; int * tpg_alloc_fabric_acl; int * tpg_check_prod_mode_write_protect; int * tpg_check_demo_mode_write_protect; int * tpg_check_demo_mode_cache; int * tpg_check_demo_mode; int * tpg_parse_pr_out_transport_id; int * tpg_get_pr_transport_id_len; int * tpg_get_pr_transport_id; int * tpg_get_default_depth; int * tpg_get_tag; int * tpg_get_wwn; int * get_fabric_proto_ident; int * get_fabric_name; } ;
struct target_fabric_configfs {TYPE_1__ tf_ops; } ;
struct TYPE_13__ {int * ct_attrs; } ;
struct TYPE_12__ {int * ct_attrs; } ;
struct TYPE_11__ {int * ct_attrs; } ;
struct TYPE_10__ {int ct_attrs; } ;
struct TYPE_9__ {int ct_attrs; } ;
struct TYPE_14__ {TYPE_6__ tfc_tpg_np_base_cit; TYPE_5__ tfc_tpg_param_cit; TYPE_4__ tfc_tpg_attrib_cit; TYPE_3__ tfc_tpg_base_cit; TYPE_2__ tfc_wwn_cit; } ;


 scalar_t__ IS_ERR (struct target_fabric_configfs*) ;
 int PTR_ERR (struct target_fabric_configfs*) ;
 TYPE_7__* TF_CIT_TMPL (struct target_fabric_configfs*) ;
 int THIS_MODULE ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int target_fabric_configfs_free (struct target_fabric_configfs*) ;
 struct target_fabric_configfs* target_fabric_configfs_init (int ,char*) ;
 int target_fabric_configfs_register (struct target_fabric_configfs*) ;
 int tcm_loop_check_demo_mode ;
 int tcm_loop_check_demo_mode_cache ;
 int tcm_loop_check_demo_mode_write_protect ;
 int tcm_loop_check_prod_mode_write_protect ;
 int tcm_loop_check_stop_free ;
 int tcm_loop_close_session ;
 int tcm_loop_drop_naa_tpg ;
 int tcm_loop_drop_scsi_hba ;
 struct target_fabric_configfs* tcm_loop_fabric_configfs ;
 int tcm_loop_get_cmd_state ;
 int tcm_loop_get_default_depth ;
 int tcm_loop_get_endpoint_wwn ;
 int tcm_loop_get_fabric_name ;
 int tcm_loop_get_fabric_proto_ident ;
 int tcm_loop_get_inst_index ;
 int tcm_loop_get_pr_transport_id ;
 int tcm_loop_get_pr_transport_id_len ;
 int tcm_loop_get_tag ;
 int tcm_loop_get_task_tag ;
 scalar_t__ tcm_loop_hba_no_cnt ;
 int tcm_loop_make_naa_tpg ;
 int tcm_loop_make_scsi_hba ;
 int tcm_loop_parse_pr_out_transport_id ;
 int tcm_loop_port_link ;
 int tcm_loop_port_unlink ;
 int tcm_loop_queue_data_in ;
 int tcm_loop_queue_status ;
 int tcm_loop_queue_tm_rsp ;
 int tcm_loop_release_cmd ;
 int tcm_loop_sess_get_index ;
 int tcm_loop_set_default_node_attributes ;
 int tcm_loop_shutdown_session ;
 int tcm_loop_tpg_alloc_fabric_acl ;
 int tcm_loop_tpg_attrs ;
 int tcm_loop_tpg_release_fabric_acl ;
 int tcm_loop_write_pending ;
 int tcm_loop_write_pending_status ;
 int tcm_loop_wwn_attrs ;

__attribute__((used)) static int tcm_loop_register_configfs(void)
{
 struct target_fabric_configfs *fabric;
 int ret;



 tcm_loop_hba_no_cnt = 0;



 fabric = target_fabric_configfs_init(THIS_MODULE, "loopback");
 if (IS_ERR(fabric)) {
  pr_err("tcm_loop_register_configfs() failed!\n");
  return PTR_ERR(fabric);
 }



 fabric->tf_ops.get_fabric_name = &tcm_loop_get_fabric_name;
 fabric->tf_ops.get_fabric_proto_ident = &tcm_loop_get_fabric_proto_ident;
 fabric->tf_ops.tpg_get_wwn = &tcm_loop_get_endpoint_wwn;
 fabric->tf_ops.tpg_get_tag = &tcm_loop_get_tag;
 fabric->tf_ops.tpg_get_default_depth = &tcm_loop_get_default_depth;
 fabric->tf_ops.tpg_get_pr_transport_id = &tcm_loop_get_pr_transport_id;
 fabric->tf_ops.tpg_get_pr_transport_id_len =
     &tcm_loop_get_pr_transport_id_len;
 fabric->tf_ops.tpg_parse_pr_out_transport_id =
     &tcm_loop_parse_pr_out_transport_id;
 fabric->tf_ops.tpg_check_demo_mode = &tcm_loop_check_demo_mode;
 fabric->tf_ops.tpg_check_demo_mode_cache =
     &tcm_loop_check_demo_mode_cache;
 fabric->tf_ops.tpg_check_demo_mode_write_protect =
     &tcm_loop_check_demo_mode_write_protect;
 fabric->tf_ops.tpg_check_prod_mode_write_protect =
     &tcm_loop_check_prod_mode_write_protect;





 fabric->tf_ops.tpg_alloc_fabric_acl = &tcm_loop_tpg_alloc_fabric_acl;
 fabric->tf_ops.tpg_release_fabric_acl =
     &tcm_loop_tpg_release_fabric_acl;
 fabric->tf_ops.tpg_get_inst_index = &tcm_loop_get_inst_index;



 fabric->tf_ops.check_stop_free = &tcm_loop_check_stop_free;
 fabric->tf_ops.release_cmd = &tcm_loop_release_cmd;
 fabric->tf_ops.shutdown_session = &tcm_loop_shutdown_session;
 fabric->tf_ops.close_session = &tcm_loop_close_session;
 fabric->tf_ops.sess_get_index = &tcm_loop_sess_get_index;
 fabric->tf_ops.sess_get_initiator_sid = ((void*)0);
 fabric->tf_ops.write_pending = &tcm_loop_write_pending;
 fabric->tf_ops.write_pending_status = &tcm_loop_write_pending_status;



 fabric->tf_ops.set_default_node_attributes =
     &tcm_loop_set_default_node_attributes;
 fabric->tf_ops.get_task_tag = &tcm_loop_get_task_tag;
 fabric->tf_ops.get_cmd_state = &tcm_loop_get_cmd_state;
 fabric->tf_ops.queue_data_in = &tcm_loop_queue_data_in;
 fabric->tf_ops.queue_status = &tcm_loop_queue_status;
 fabric->tf_ops.queue_tm_rsp = &tcm_loop_queue_tm_rsp;




 fabric->tf_ops.fabric_make_wwn = &tcm_loop_make_scsi_hba;
 fabric->tf_ops.fabric_drop_wwn = &tcm_loop_drop_scsi_hba;
 fabric->tf_ops.fabric_make_tpg = &tcm_loop_make_naa_tpg;
 fabric->tf_ops.fabric_drop_tpg = &tcm_loop_drop_naa_tpg;




 fabric->tf_ops.fabric_post_link = &tcm_loop_port_link;
 fabric->tf_ops.fabric_pre_unlink = &tcm_loop_port_unlink;
 fabric->tf_ops.fabric_make_np = ((void*)0);
 fabric->tf_ops.fabric_drop_np = ((void*)0);



 TF_CIT_TMPL(fabric)->tfc_wwn_cit.ct_attrs = tcm_loop_wwn_attrs;
 TF_CIT_TMPL(fabric)->tfc_tpg_base_cit.ct_attrs = tcm_loop_tpg_attrs;
 TF_CIT_TMPL(fabric)->tfc_tpg_attrib_cit.ct_attrs = ((void*)0);
 TF_CIT_TMPL(fabric)->tfc_tpg_param_cit.ct_attrs = ((void*)0);
 TF_CIT_TMPL(fabric)->tfc_tpg_np_base_cit.ct_attrs = ((void*)0);




 ret = target_fabric_configfs_register(fabric);
 if (ret < 0) {
  pr_err("target_fabric_configfs_register() for"
    " TCM_Loop failed!\n");
  target_fabric_configfs_free(fabric);
  return -1;
 }



 tcm_loop_fabric_configfs = fabric;
 pr_debug("TCM_LOOP[0] - Set fabric ->"
   " tcm_loop_fabric_configfs\n");
 return 0;
}
