
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_msg_ctx {int state; int * msg; int node; } ;


 int ECRYPTFS_MSG_CTX_STATE_FREE ;
 int ecryptfs_msg_ctx_free_list ;
 int kfree (int *) ;
 int list_move (int *,int *) ;

void ecryptfs_msg_ctx_alloc_to_free(struct ecryptfs_msg_ctx *msg_ctx)
{
 list_move(&(msg_ctx->node), &ecryptfs_msg_ctx_free_list);
 if (msg_ctx->msg)
  kfree(msg_ctx->msg);
 msg_ctx->msg = ((void*)0);
 msg_ctx->state = ECRYPTFS_MSG_CTX_STATE_FREE;
}
