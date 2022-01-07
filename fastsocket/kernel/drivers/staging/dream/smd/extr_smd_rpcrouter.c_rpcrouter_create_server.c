
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rr_server {int list; scalar_t__ vers; scalar_t__ prog; scalar_t__ cid; scalar_t__ pid; } ;


 int ENOMEM ;
 struct rr_server* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ RPCROUTER_PID_REMOTE ;
 int kfree (struct rr_server*) ;
 struct rr_server* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memset (struct rr_server*,int ,int) ;
 int msm_rpcrouter_create_server_cdev (struct rr_server*) ;
 int server_list ;
 int server_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct rr_server *rpcrouter_create_server(uint32_t pid,
       uint32_t cid,
       uint32_t prog,
       uint32_t ver)
{
 struct rr_server *server;
 unsigned long flags;
 int rc;

 server = kmalloc(sizeof(struct rr_server), GFP_KERNEL);
 if (!server)
  return ERR_PTR(-ENOMEM);

 memset(server, 0, sizeof(struct rr_server));
 server->pid = pid;
 server->cid = cid;
 server->prog = prog;
 server->vers = ver;

 spin_lock_irqsave(&server_list_lock, flags);
 list_add_tail(&server->list, &server_list);
 spin_unlock_irqrestore(&server_list_lock, flags);

 if (pid == RPCROUTER_PID_REMOTE) {
  rc = msm_rpcrouter_create_server_cdev(server);
  if (rc < 0)
   goto out_fail;
 }
 return server;
out_fail:
 spin_lock_irqsave(&server_list_lock, flags);
 list_del(&server->list);
 spin_unlock_irqrestore(&server_list_lock, flags);
 kfree(server);
 return ERR_PTR(rc);
}
