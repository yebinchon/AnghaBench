
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rr_remote_endpoint {int list; int quota_lock; int quota_wait; int pid; int cid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RPCROUTER_PID_REMOTE ;
 int init_waitqueue_head (int *) ;
 struct rr_remote_endpoint* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (struct rr_remote_endpoint*,int ,int) ;
 int remote_endpoints ;
 int remote_endpoints_lock ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rpcrouter_create_remote_endpoint(uint32_t cid)
{
 struct rr_remote_endpoint *new_c;
 unsigned long flags;

 new_c = kmalloc(sizeof(struct rr_remote_endpoint), GFP_KERNEL);
 if (!new_c)
  return -ENOMEM;
 memset(new_c, 0, sizeof(struct rr_remote_endpoint));

 new_c->cid = cid;
 new_c->pid = RPCROUTER_PID_REMOTE;
 init_waitqueue_head(&new_c->quota_wait);
 spin_lock_init(&new_c->quota_lock);

 spin_lock_irqsave(&remote_endpoints_lock, flags);
 list_add_tail(&new_c->list, &remote_endpoints);
 spin_unlock_irqrestore(&remote_endpoints_lock, flags);
 return 0;
}
