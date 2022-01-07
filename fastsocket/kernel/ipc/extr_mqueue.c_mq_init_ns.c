
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {int * mq_mnt; int mq_msgsize_default; int mq_msg_default; int mq_msgsize_max; int mq_msg_max; int mq_queues_max; scalar_t__ mq_queues_count; } ;


 int DFLT_MSG ;
 int DFLT_MSGMAX ;
 int DFLT_MSGSIZE ;
 int DFLT_MSGSIZEMAX ;
 int DFLT_QUEUESMAX ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * kern_mount_data (int *,struct ipc_namespace*) ;
 int mqueue_fs_type ;

int mq_init_ns(struct ipc_namespace *ns)
{
 ns->mq_queues_count = 0;
 ns->mq_queues_max = DFLT_QUEUESMAX;
 ns->mq_msg_max = DFLT_MSGMAX;
 ns->mq_msgsize_max = DFLT_MSGSIZEMAX;
 ns->mq_msg_default = DFLT_MSG;
 ns->mq_msgsize_default = DFLT_MSGSIZE;

 ns->mq_mnt = kern_mount_data(&mqueue_fs_type, ns);
 if (IS_ERR(ns->mq_mnt)) {
  int err = PTR_ERR(ns->mq_mnt);
  ns->mq_mnt = ((void*)0);
  return err;
 }
 return 0;
}
