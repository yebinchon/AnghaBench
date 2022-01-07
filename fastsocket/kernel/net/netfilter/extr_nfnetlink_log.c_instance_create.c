
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct nfulnl_instance {int peer_pid; int hlist; int copy_range; int copy_mode; int nlbufsiz; int flushtimeout; int qthreshold; int group_num; int timer; int use; int lock; } ;


 int EAGAIN ;
 int EEXIST ;
 int ENOMEM ;
 struct nfulnl_instance* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 int NFULNL_COPY_PACKET ;
 int NFULNL_COPY_RANGE_MAX ;
 int NFULNL_NLBUFSIZ_DEFAULT ;
 int NFULNL_QTHRESH_DEFAULT ;
 int NFULNL_TIMEOUT_DEFAULT ;
 int THIS_MODULE ;
 scalar_t__ __instance_lookup (int ) ;
 int atomic_set (int *,int) ;
 int hlist_add_head (int *,int *) ;
 size_t instance_hashfn (int ) ;
 int * instance_table ;
 int instances_lock ;
 int kfree (struct nfulnl_instance*) ;
 struct nfulnl_instance* kzalloc (int,int ) ;
 int nfulnl_timer ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;
 int try_module_get (int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static struct nfulnl_instance *
instance_create(u_int16_t group_num, int pid)
{
 struct nfulnl_instance *inst;
 int err;

 write_lock_bh(&instances_lock);
 if (__instance_lookup(group_num)) {
  err = -EEXIST;
  goto out_unlock;
 }

 inst = kzalloc(sizeof(*inst), GFP_ATOMIC);
 if (!inst) {
  err = -ENOMEM;
  goto out_unlock;
 }

 if (!try_module_get(THIS_MODULE)) {
  kfree(inst);
  err = -EAGAIN;
  goto out_unlock;
 }

 INIT_HLIST_NODE(&inst->hlist);
 spin_lock_init(&inst->lock);

 atomic_set(&inst->use, 2);

 setup_timer(&inst->timer, nfulnl_timer, (unsigned long)inst);

 inst->peer_pid = pid;
 inst->group_num = group_num;

 inst->qthreshold = NFULNL_QTHRESH_DEFAULT;
 inst->flushtimeout = NFULNL_TIMEOUT_DEFAULT;
 inst->nlbufsiz = NFULNL_NLBUFSIZ_DEFAULT;
 inst->copy_mode = NFULNL_COPY_PACKET;
 inst->copy_range = NFULNL_COPY_RANGE_MAX;

 hlist_add_head(&inst->hlist,
         &instance_table[instance_hashfn(group_num)]);

 write_unlock_bh(&instances_lock);

 return inst;

out_unlock:
 write_unlock_bh(&instances_lock);
 return ERR_PTR(err);
}
