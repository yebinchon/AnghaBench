
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_core_fabric_ops {int fabric_drop_tpg; int fabric_make_tpg; int fabric_drop_wwn; int fabric_make_wwn; int queue_tm_rsp; int queue_status; int queue_data_in; int get_cmd_state; int get_task_tag; int set_default_node_attributes; int write_pending_status; int write_pending; int sess_get_index; int close_session; int shutdown_session; int release_cmd; int tpg_get_inst_index; int tpg_release_fabric_acl; int tpg_alloc_fabric_acl; int tpg_check_prod_mode_write_protect; int tpg_check_demo_mode_write_protect; int tpg_check_demo_mode_cache; int tpg_check_demo_mode; int tpg_get_pr_transport_id_len; int tpg_get_pr_transport_id; int tpg_get_default_depth; int tpg_get_tag; int tpg_get_wwn; int get_fabric_proto_ident; int get_fabric_name; } ;
struct target_fabric_configfs {struct target_core_fabric_ops tf_ops; } ;


 int EINVAL ;
 int pr_err (char*) ;

__attribute__((used)) static int target_fabric_tf_ops_check(
 struct target_fabric_configfs *tf)
{
 struct target_core_fabric_ops *tfo = &tf->tf_ops;

 if (!tfo->get_fabric_name) {
  pr_err("Missing tfo->get_fabric_name()\n");
  return -EINVAL;
 }
 if (!tfo->get_fabric_proto_ident) {
  pr_err("Missing tfo->get_fabric_proto_ident()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_get_wwn) {
  pr_err("Missing tfo->tpg_get_wwn()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_get_tag) {
  pr_err("Missing tfo->tpg_get_tag()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_get_default_depth) {
  pr_err("Missing tfo->tpg_get_default_depth()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_get_pr_transport_id) {
  pr_err("Missing tfo->tpg_get_pr_transport_id()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_get_pr_transport_id_len) {
  pr_err("Missing tfo->tpg_get_pr_transport_id_len()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_check_demo_mode) {
  pr_err("Missing tfo->tpg_check_demo_mode()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_check_demo_mode_cache) {
  pr_err("Missing tfo->tpg_check_demo_mode_cache()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_check_demo_mode_write_protect) {
  pr_err("Missing tfo->tpg_check_demo_mode_write_protect()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_check_prod_mode_write_protect) {
  pr_err("Missing tfo->tpg_check_prod_mode_write_protect()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_alloc_fabric_acl) {
  pr_err("Missing tfo->tpg_alloc_fabric_acl()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_release_fabric_acl) {
  pr_err("Missing tfo->tpg_release_fabric_acl()\n");
  return -EINVAL;
 }
 if (!tfo->tpg_get_inst_index) {
  pr_err("Missing tfo->tpg_get_inst_index()\n");
  return -EINVAL;
 }
 if (!tfo->release_cmd) {
  pr_err("Missing tfo->release_cmd()\n");
  return -EINVAL;
 }
 if (!tfo->shutdown_session) {
  pr_err("Missing tfo->shutdown_session()\n");
  return -EINVAL;
 }
 if (!tfo->close_session) {
  pr_err("Missing tfo->close_session()\n");
  return -EINVAL;
 }
 if (!tfo->sess_get_index) {
  pr_err("Missing tfo->sess_get_index()\n");
  return -EINVAL;
 }
 if (!tfo->write_pending) {
  pr_err("Missing tfo->write_pending()\n");
  return -EINVAL;
 }
 if (!tfo->write_pending_status) {
  pr_err("Missing tfo->write_pending_status()\n");
  return -EINVAL;
 }
 if (!tfo->set_default_node_attributes) {
  pr_err("Missing tfo->set_default_node_attributes()\n");
  return -EINVAL;
 }
 if (!tfo->get_task_tag) {
  pr_err("Missing tfo->get_task_tag()\n");
  return -EINVAL;
 }
 if (!tfo->get_cmd_state) {
  pr_err("Missing tfo->get_cmd_state()\n");
  return -EINVAL;
 }
 if (!tfo->queue_data_in) {
  pr_err("Missing tfo->queue_data_in()\n");
  return -EINVAL;
 }
 if (!tfo->queue_status) {
  pr_err("Missing tfo->queue_status()\n");
  return -EINVAL;
 }
 if (!tfo->queue_tm_rsp) {
  pr_err("Missing tfo->queue_tm_rsp()\n");
  return -EINVAL;
 }





 if (!tfo->fabric_make_wwn) {
  pr_err("Missing tfo->fabric_make_wwn()\n");
  return -EINVAL;
 }
 if (!tfo->fabric_drop_wwn) {
  pr_err("Missing tfo->fabric_drop_wwn()\n");
  return -EINVAL;
 }
 if (!tfo->fabric_make_tpg) {
  pr_err("Missing tfo->fabric_make_tpg()\n");
  return -EINVAL;
 }
 if (!tfo->fabric_drop_tpg) {
  pr_err("Missing tfo->fabric_drop_tpg()\n");
  return -EINVAL;
 }

 return 0;
}
