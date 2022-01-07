
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {struct se_node_acl* se_node_acl; } ;
struct se_node_acl {struct se_dev_entry** device_list; } ;
struct se_dev_entry {int ua_count; } ;
struct se_cmd {size_t orig_fe_lun; int* t_task_cdb; struct se_session* se_sess; } ;
typedef int sense_reason_t ;





 int TCM_CHECK_CONDITION_UNIT_ATTENTION ;
 int atomic_read (int *) ;

sense_reason_t
target_scsi3_ua_check(struct se_cmd *cmd)
{
 struct se_dev_entry *deve;
 struct se_session *sess = cmd->se_sess;
 struct se_node_acl *nacl;

 if (!sess)
  return 0;

 nacl = sess->se_node_acl;
 if (!nacl)
  return 0;

 deve = nacl->device_list[cmd->orig_fe_lun];
 if (!atomic_read(&deve->ua_count))
  return 0;
 switch (cmd->t_task_cdb[0]) {
 case 130:
 case 129:
 case 128:
  return 0;
 default:
  return TCM_CHECK_CONDITION_UNIT_ATTENTION;
 }
}
