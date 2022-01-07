
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_ops {int ops_list; int flags; scalar_t__ policy; int * doit; int * dumpit; int cmd; } ;
struct genl_family {int ops_list; } ;


 int CTRL_CMD_NEWOPS ;
 int EEXIST ;
 int EINVAL ;
 int GENL_CMD_CAP_DO ;
 int GENL_CMD_CAP_DUMP ;
 int GENL_CMD_CAP_HASPOL ;
 int genl_ctrl_event (int ,struct genl_ops*) ;
 scalar_t__ genl_get_cmd (int ,struct genl_family*) ;
 int genl_lock () ;
 int genl_unlock () ;
 int list_add_tail (int *,int *) ;

int genl_register_ops(struct genl_family *family, struct genl_ops *ops)
{
 int err = -EINVAL;

 if (ops->dumpit == ((void*)0) && ops->doit == ((void*)0))
  goto errout;

 if (genl_get_cmd(ops->cmd, family)) {
  err = -EEXIST;
  goto errout;
 }

 if (ops->dumpit)
  ops->flags |= GENL_CMD_CAP_DUMP;
 if (ops->doit)
  ops->flags |= GENL_CMD_CAP_DO;
 if (ops->policy)
  ops->flags |= GENL_CMD_CAP_HASPOL;

 genl_lock();
 list_add_tail(&ops->ops_list, &family->ops_list);
 genl_unlock();

 genl_ctrl_event(CTRL_CMD_NEWOPS, ops);
 err = 0;
errout:
 return err;
}
