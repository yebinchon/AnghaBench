
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_rpc_endpoint {int dummy; } ;
struct inode {int i_rdev; } ;
struct file {struct msm_rpc_endpoint* private_data; } ;


 int ENOMEM ;
 struct msm_rpc_endpoint* msm_rpcrouter_create_local_endpoint (int ) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int rpcrouter_open(struct inode *inode, struct file *filp)
{
 int rc;
 struct msm_rpc_endpoint *ept;

 rc = nonseekable_open(inode, filp);
 if (rc < 0)
  return rc;

 ept = msm_rpcrouter_create_local_endpoint(inode->i_rdev);
 if (!ept)
  return -ENOMEM;

 filp->private_data = ept;
 return 0;
}
