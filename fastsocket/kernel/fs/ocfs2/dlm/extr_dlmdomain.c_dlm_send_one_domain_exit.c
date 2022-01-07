
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_exit_domain {int node_idx; } ;
struct dlm_ctxt {int key; int node_num; int name; } ;
typedef int leave_msg ;


 int DLM_EXIT_DOMAIN_MSG ;
 int memset (struct dlm_exit_domain*,int ,int) ;
 int mlog (int ,char*,int,...) ;
 int o2net_send_message (int ,int ,struct dlm_exit_domain*,int,unsigned int,int *) ;

__attribute__((used)) static int dlm_send_one_domain_exit(struct dlm_ctxt *dlm,
        unsigned int node)
{
 int status;
 struct dlm_exit_domain leave_msg;

 mlog(0, "Asking node %u if we can leave the domain %s me = %u\n",
    node, dlm->name, dlm->node_num);

 memset(&leave_msg, 0, sizeof(leave_msg));
 leave_msg.node_idx = dlm->node_num;

 status = o2net_send_message(DLM_EXIT_DOMAIN_MSG, dlm->key,
        &leave_msg, sizeof(leave_msg), node,
        ((void*)0));

 mlog(0, "status return %d from o2net_send_message\n", status);

 return status;
}
