
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nfs4_state_owner {int dummy; } ;
struct TYPE_4__ {int seqid; } ;
struct nfs4_closedata {TYPE_1__ arg; TYPE_3__* state; scalar_t__ roc; } ;
struct TYPE_6__ {TYPE_2__* inode; struct nfs4_state_owner* owner; } ;
struct TYPE_5__ {struct super_block* i_sb; } ;


 int kfree (struct nfs4_closedata*) ;
 int nfs4_put_open_state (TYPE_3__*) ;
 int nfs4_put_state_owner (struct nfs4_state_owner*) ;
 int nfs_free_seqid (int ) ;
 int nfs_sb_deactive_async (struct super_block*) ;
 int pnfs_roc_release (TYPE_2__*) ;

__attribute__((used)) static void nfs4_free_closedata(void *data)
{
 struct nfs4_closedata *calldata = data;
 struct nfs4_state_owner *sp = calldata->state->owner;
 struct super_block *sb = calldata->state->inode->i_sb;

 if (calldata->roc)
  pnfs_roc_release(calldata->state->inode);
 nfs4_put_open_state(calldata->state);
 nfs_free_seqid(calldata->arg.seqid);
 nfs4_put_state_owner(sp);
 nfs_sb_deactive_async(sb);
 kfree(calldata);
}
