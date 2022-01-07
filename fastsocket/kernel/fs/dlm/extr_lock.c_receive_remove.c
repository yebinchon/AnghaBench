
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_nodeid; } ;
struct dlm_message {int m_extra; int m_hash; TYPE_1__ m_header; } ;
struct dlm_ls {int dummy; } ;


 int dlm_dir_remove_entry (struct dlm_ls*,int,int ,int) ;
 int dlm_hash2nodeid (struct dlm_ls*,int ) ;
 int dlm_our_nodeid () ;
 int log_error (struct dlm_ls*,char*,int,int) ;
 int receive_extralen (struct dlm_message*) ;

__attribute__((used)) static void receive_remove(struct dlm_ls *ls, struct dlm_message *ms)
{
 int len, dir_nodeid, from_nodeid;

 from_nodeid = ms->m_header.h_nodeid;

 len = receive_extralen(ms);

 dir_nodeid = dlm_hash2nodeid(ls, ms->m_hash);
 if (dir_nodeid != dlm_our_nodeid()) {
  log_error(ls, "remove dir entry dir_nodeid %d from %d",
     dir_nodeid, from_nodeid);
  return;
 }

 dlm_dir_remove_entry(ls, from_nodeid, ms->m_extra, len);
}
