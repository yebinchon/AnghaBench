
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int flags; int wait_on_page_timeout; int wait; } ;
struct netfs_trans {int dummy; } ;
struct netfs_cmd {scalar_t__ csize; scalar_t__ ext; scalar_t__ start; scalar_t__ size; int id; int cmd; } ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int NETFS_CAPABILITIES ;
 int POHMELFS_ROOT_CAPABILITIES ;
 int netfs_convert_cmd (struct netfs_cmd*) ;
 struct netfs_trans* netfs_trans_alloc (struct pohmelfs_sb*,int ,int ,int ) ;
 struct netfs_cmd* netfs_trans_current (struct netfs_trans*) ;
 int netfs_trans_finish (struct netfs_trans*,struct pohmelfs_sb*) ;
 int netfs_trans_update (struct netfs_cmd*,struct netfs_trans*,int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int pohmelfs_root_handshake(struct pohmelfs_sb *psb)
{
 struct netfs_trans *t;
 struct netfs_cmd *cmd;
 int err = -ENOMEM;

 t = netfs_trans_alloc(psb, 0, 0, 0);
 if (!t)
  goto err_out_exit;

 cmd = netfs_trans_current(t);

 cmd->cmd = NETFS_CAPABILITIES;
 cmd->id = POHMELFS_ROOT_CAPABILITIES;
 cmd->size = 0;
 cmd->start = 0;
 cmd->ext = 0;
 cmd->csize = 0;

 netfs_convert_cmd(cmd);
 netfs_trans_update(cmd, t, 0);

 err = netfs_trans_finish(t, psb);
 if (err)
  goto err_out_exit;

 psb->flags = ~0;
 err = wait_event_interruptible_timeout(psb->wait,
   (psb->flags != ~0),
   psb->wait_on_page_timeout);
 if (!err)
  err = -ETIMEDOUT;
 else if (err > 0)
  err = -psb->flags;

 if (err)
  goto err_out_exit;

 return 0;

err_out_exit:
 return err;
}
