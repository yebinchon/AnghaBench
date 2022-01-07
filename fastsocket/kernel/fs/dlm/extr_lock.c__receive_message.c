
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_nodeid; } ;
struct dlm_message {int m_type; int m_result; int m_remid; int m_lkid; TYPE_1__ m_header; } ;
struct dlm_ls {int dummy; } ;
 int dlm_astd_wake () ;
 int dlm_is_member (struct dlm_ls*,int ) ;
 int log_debug (struct dlm_ls*,char*,int,int ,int ,int ,int ) ;
 int log_error (struct dlm_ls*,char*,int) ;
 int receive_bast (struct dlm_ls*,struct dlm_message*) ;
 int receive_cancel (struct dlm_ls*,struct dlm_message*) ;
 int receive_cancel_reply (struct dlm_ls*,struct dlm_message*) ;
 int receive_convert (struct dlm_ls*,struct dlm_message*) ;
 int receive_convert_reply (struct dlm_ls*,struct dlm_message*) ;
 int receive_grant (struct dlm_ls*,struct dlm_message*) ;
 int receive_lookup (struct dlm_ls*,struct dlm_message*) ;
 int receive_lookup_reply (struct dlm_ls*,struct dlm_message*) ;
 int receive_purge (struct dlm_ls*,struct dlm_message*) ;
 int receive_remove (struct dlm_ls*,struct dlm_message*) ;
 int receive_request (struct dlm_ls*,struct dlm_message*) ;
 int receive_request_reply (struct dlm_ls*,struct dlm_message*) ;
 int receive_unlock (struct dlm_ls*,struct dlm_message*) ;
 int receive_unlock_reply (struct dlm_ls*,struct dlm_message*) ;

__attribute__((used)) static void _receive_message(struct dlm_ls *ls, struct dlm_message *ms)
{
 if (!dlm_is_member(ls, ms->m_header.h_nodeid)) {
  log_debug(ls, "ignore non-member message %d from %d %x %x %d",
     ms->m_type, ms->m_header.h_nodeid, ms->m_lkid,
     ms->m_remid, ms->m_result);
  return;
 }

 switch (ms->m_type) {



 case 131:
  receive_request(ls, ms);
  break;

 case 138:
  receive_convert(ls, ms);
  break;

 case 129:
  receive_unlock(ls, ms);
  break;

 case 140:
  receive_cancel(ls, ms);
  break;



 case 130:
  receive_request_reply(ls, ms);
  break;

 case 137:
  receive_convert_reply(ls, ms);
  break;

 case 128:
  receive_unlock_reply(ls, ms);
  break;

 case 139:
  receive_cancel_reply(ls, ms);
  break;



 case 136:
  receive_grant(ls, ms);
  break;

 case 141:
  receive_bast(ls, ms);
  break;



 case 135:
  receive_lookup(ls, ms);
  break;

 case 132:
  receive_remove(ls, ms);
  break;



 case 134:
  receive_lookup_reply(ls, ms);
  break;



 case 133:
  receive_purge(ls, ms);
  break;

 default:
  log_error(ls, "unknown message type %d", ms->m_type);
 }

 dlm_astd_wake();
}
