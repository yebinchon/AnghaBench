
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int name; int node_num; } ;
struct dlm_assert_joined {int name_len; int domain; int node_idx; } ;
typedef int assert_msg ;


 int DLM_ASSERT_JOINED_MSG ;
 int DLM_MOD_KEY ;
 int memcpy (int ,int ,int ) ;
 int memset (struct dlm_assert_joined*,int ,int) ;
 int mlog (int ,char*,unsigned int) ;
 int mlog_errno (int) ;
 int o2net_send_message (int ,int ,struct dlm_assert_joined*,int,unsigned int,int *) ;
 int strlen (int ) ;

__attribute__((used)) static int dlm_send_one_join_assert(struct dlm_ctxt *dlm,
        unsigned int node)
{
 int status;
 struct dlm_assert_joined assert_msg;

 mlog(0, "Sending join assert to node %u\n", node);

 memset(&assert_msg, 0, sizeof(assert_msg));
 assert_msg.node_idx = dlm->node_num;
 assert_msg.name_len = strlen(dlm->name);
 memcpy(assert_msg.domain, dlm->name, assert_msg.name_len);

 status = o2net_send_message(DLM_ASSERT_JOINED_MSG, DLM_MOD_KEY,
        &assert_msg, sizeof(assert_msg), node,
        ((void*)0));
 if (status < 0)
  mlog_errno(status);

 return status;
}
