
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcom_lock {int dummy; } ;
struct TYPE_2__ {int h_length; } ;
struct dlm_rcom {int rc_type; TYPE_1__ rc_header; } ;
struct dlm_ls {int dummy; } ;
 int dlm_recover_process_copy (struct dlm_ls*,struct dlm_rcom*) ;
 scalar_t__ dlm_recovery_stopped (struct dlm_ls*) ;
 scalar_t__ is_old_reply (struct dlm_ls*,struct dlm_rcom*) ;
 int log_debug (struct dlm_ls*,char*,int,int) ;
 int log_error (struct dlm_ls*,char*,int,...) ;
 int receive_rcom_lock (struct dlm_ls*,struct dlm_rcom*) ;
 int receive_rcom_lookup (struct dlm_ls*,struct dlm_rcom*) ;
 int receive_rcom_lookup_reply (struct dlm_ls*,struct dlm_rcom*) ;
 int receive_rcom_names (struct dlm_ls*,struct dlm_rcom*) ;
 int receive_rcom_status (struct dlm_ls*,struct dlm_rcom*) ;
 int receive_sync_reply (struct dlm_ls*,struct dlm_rcom*) ;

void dlm_receive_rcom(struct dlm_ls *ls, struct dlm_rcom *rc, int nodeid)
{
 int lock_size = sizeof(struct dlm_rcom) + sizeof(struct rcom_lock);

 if (dlm_recovery_stopped(ls) && (rc->rc_type != 129)) {
  log_debug(ls, "ignoring recovery message %x from %d",
     rc->rc_type, nodeid);
  goto out;
 }

 if (is_old_reply(ls, rc))
  goto out;

 switch (rc->rc_type) {
 case 129:
  receive_rcom_status(ls, rc);
  break;

 case 131:
  receive_rcom_names(ls, rc);
  break;

 case 133:
  receive_rcom_lookup(ls, rc);
  break;

 case 135:
  if (rc->rc_header.h_length < lock_size)
   goto Eshort;
  receive_rcom_lock(ls, rc);
  break;

 case 128:
  receive_sync_reply(ls, rc);
  break;

 case 130:
  receive_sync_reply(ls, rc);
  break;

 case 132:
  receive_rcom_lookup_reply(ls, rc);
  break;

 case 134:
  if (rc->rc_header.h_length < lock_size)
   goto Eshort;
  dlm_recover_process_copy(ls, rc);
  break;

 default:
  log_error(ls, "receive_rcom bad type %d", rc->rc_type);
 }
out:
 return;
Eshort:
 log_error(ls, "recovery message %x from %d is too short",
     rc->rc_type, nodeid);
}
