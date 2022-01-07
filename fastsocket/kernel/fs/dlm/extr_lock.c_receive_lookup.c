
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_nodeid; } ;
struct dlm_message {int m_extra; int m_hash; TYPE_1__ m_header; } ;
struct dlm_ls {int dummy; } ;


 int EINVAL ;
 int dlm_dir_lookup (struct dlm_ls*,int,int ,int,int*) ;
 int dlm_hash2nodeid (struct dlm_ls*,int ) ;
 int dlm_our_nodeid () ;
 int log_error (struct dlm_ls*,char*,int,int) ;
 int receive_extralen (struct dlm_message*) ;
 int receive_request (struct dlm_ls*,struct dlm_message*) ;
 int send_lookup_reply (struct dlm_ls*,struct dlm_message*,int,int) ;

__attribute__((used)) static void receive_lookup(struct dlm_ls *ls, struct dlm_message *ms)
{
 int len, error, ret_nodeid, dir_nodeid, from_nodeid, our_nodeid;

 from_nodeid = ms->m_header.h_nodeid;
 our_nodeid = dlm_our_nodeid();

 len = receive_extralen(ms);

 dir_nodeid = dlm_hash2nodeid(ls, ms->m_hash);
 if (dir_nodeid != our_nodeid) {
  log_error(ls, "lookup dir_nodeid %d from %d",
     dir_nodeid, from_nodeid);
  error = -EINVAL;
  ret_nodeid = -1;
  goto out;
 }

 error = dlm_dir_lookup(ls, from_nodeid, ms->m_extra, len, &ret_nodeid);


 if (!error && ret_nodeid == our_nodeid) {
  receive_request(ls, ms);
  return;
 }
 out:
 send_lookup_reply(ls, ms, ret_nodeid, error);
}
