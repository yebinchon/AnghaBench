
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_sequence {int wait; int lock; } ;
struct nfs_seqid {int list; TYPE_1__* sequence; } ;
struct TYPE_2__ {struct rpc_sequence* sequence; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int rpc_wake_up (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_release_seqid(struct nfs_seqid *seqid)
{
 if (!list_empty(&seqid->list)) {
  struct rpc_sequence *sequence = seqid->sequence->sequence;

  spin_lock(&sequence->lock);
  list_del_init(&seqid->list);
  spin_unlock(&sequence->lock);
  rpc_wake_up(&sequence->wait);
 }
}
