
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_mhandle {int dummy; } ;
struct TYPE_2__ {int h_version; int h_length; int h_cmd; int h_nodeid; int h_lockspace; } ;
struct dlm_message {int m_type; TYPE_1__ m_header; } ;
struct dlm_ls {int ls_global_id; } ;


 int DLM_HEADER_MAJOR ;
 int DLM_HEADER_MINOR ;
 int DLM_MSG ;
 int ENOBUFS ;
 int GFP_NOFS ;
 struct dlm_mhandle* dlm_lowcomms_get_buffer (int,int,int ,char**) ;
 int dlm_our_nodeid () ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int _create_message(struct dlm_ls *ls, int mb_len,
      int to_nodeid, int mstype,
      struct dlm_message **ms_ret,
      struct dlm_mhandle **mh_ret)
{
 struct dlm_message *ms;
 struct dlm_mhandle *mh;
 char *mb;





 mh = dlm_lowcomms_get_buffer(to_nodeid, mb_len, GFP_NOFS, &mb);
 if (!mh)
  return -ENOBUFS;

 memset(mb, 0, mb_len);

 ms = (struct dlm_message *) mb;

 ms->m_header.h_version = (DLM_HEADER_MAJOR | DLM_HEADER_MINOR);
 ms->m_header.h_lockspace = ls->ls_global_id;
 ms->m_header.h_nodeid = dlm_our_nodeid();
 ms->m_header.h_length = mb_len;
 ms->m_header.h_cmd = DLM_MSG;

 ms->m_type = mstype;

 *mh_ret = mh;
 *ms_ret = ms;
 return 0;
}
