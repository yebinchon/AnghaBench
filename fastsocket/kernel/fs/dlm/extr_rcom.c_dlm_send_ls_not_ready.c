
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcom_config {int rf_lvblen; } ;
struct TYPE_2__ {int h_version; int h_length; int h_cmd; int h_nodeid; int h_lockspace; } ;
struct dlm_rcom {scalar_t__ rc_buf; int rc_result; int rc_seq; int rc_seq_reply; int rc_id; int rc_type; TYPE_1__ rc_header; } ;
struct dlm_mhandle {int dummy; } ;


 int DLM_HEADER_MAJOR ;
 int DLM_HEADER_MINOR ;
 int DLM_RCOM ;
 int DLM_RCOM_STATUS_REPLY ;
 int ENOBUFS ;
 int ESRCH ;
 int GFP_NOFS ;
 int cpu_to_le32 (unsigned int) ;
 int dlm_lowcomms_commit_buffer (struct dlm_mhandle*) ;
 struct dlm_mhandle* dlm_lowcomms_get_buffer (int,int,int ,char**) ;
 int dlm_our_nodeid () ;
 int dlm_rcom_out (struct dlm_rcom*) ;
 int memset (char*,int ,int) ;

int dlm_send_ls_not_ready(int nodeid, struct dlm_rcom *rc_in)
{
 struct dlm_rcom *rc;
 struct rcom_config *rf;
 struct dlm_mhandle *mh;
 char *mb;
 int mb_len = sizeof(struct dlm_rcom) + sizeof(struct rcom_config);

 mh = dlm_lowcomms_get_buffer(nodeid, mb_len, GFP_NOFS, &mb);
 if (!mh)
  return -ENOBUFS;
 memset(mb, 0, mb_len);

 rc = (struct dlm_rcom *) mb;

 rc->rc_header.h_version = (DLM_HEADER_MAJOR | DLM_HEADER_MINOR);
 rc->rc_header.h_lockspace = rc_in->rc_header.h_lockspace;
 rc->rc_header.h_nodeid = dlm_our_nodeid();
 rc->rc_header.h_length = mb_len;
 rc->rc_header.h_cmd = DLM_RCOM;

 rc->rc_type = DLM_RCOM_STATUS_REPLY;
 rc->rc_id = rc_in->rc_id;
 rc->rc_seq_reply = rc_in->rc_seq;
 rc->rc_result = -ESRCH;

 rf = (struct rcom_config *) rc->rc_buf;
 rf->rf_lvblen = cpu_to_le32(~0U);

 dlm_rcom_out(rc);
 dlm_lowcomms_commit_buffer(mh);

 return 0;
}
