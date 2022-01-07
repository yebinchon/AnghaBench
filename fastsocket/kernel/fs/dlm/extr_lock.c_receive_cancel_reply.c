
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_nodeid; } ;
struct dlm_message {int m_remid; TYPE_1__ m_header; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int _receive_cancel_reply (struct dlm_lkb*,struct dlm_message*) ;
 int dlm_put_lkb (struct dlm_lkb*) ;
 int find_lkb (struct dlm_ls*,int ,struct dlm_lkb**) ;
 int log_debug (struct dlm_ls*,char*,int ,int ) ;

__attribute__((used)) static void receive_cancel_reply(struct dlm_ls *ls, struct dlm_message *ms)
{
 struct dlm_lkb *lkb;
 int error;

 error = find_lkb(ls, ms->m_remid, &lkb);
 if (error) {
  log_debug(ls, "receive_cancel_reply from %d no lkb %x",
     ms->m_header.h_nodeid, ms->m_remid);
  return;
 }

 _receive_cancel_reply(lkb, ms);
 dlm_put_lkb(lkb);
}
