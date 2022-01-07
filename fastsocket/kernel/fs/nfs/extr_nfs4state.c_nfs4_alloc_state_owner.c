
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int list; int lock; int wait; } ;
struct TYPE_3__ {TYPE_2__* sequence; } ;
struct nfs4_state_owner {int so_lru; int so_delegreturn_mutex; int so_reclaim_seqcount; int so_count; TYPE_2__ so_sequence; TYPE_1__ so_seqid; int so_states; int so_lock; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 struct nfs4_state_owner* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rpc_init_wait_queue (int *,char*) ;
 int seqcount_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct nfs4_state_owner *
nfs4_alloc_state_owner(void)
{
 struct nfs4_state_owner *sp;

 sp = kzalloc(sizeof(*sp),GFP_NOFS);
 if (!sp)
  return ((void*)0);
 spin_lock_init(&sp->so_lock);
 INIT_LIST_HEAD(&sp->so_states);
 rpc_init_wait_queue(&sp->so_sequence.wait, "Seqid_waitqueue");
 sp->so_seqid.sequence = &sp->so_sequence;
 spin_lock_init(&sp->so_sequence.lock);
 INIT_LIST_HEAD(&sp->so_sequence.list);
 atomic_set(&sp->so_count, 1);
 seqcount_init(&sp->so_reclaim_seqcount);
 mutex_init(&sp->so_delegreturn_mutex);
 INIT_LIST_HEAD(&sp->so_lru);
 return sp;
}
