
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rpcrouter_ioctl_server_args {int vers; int prog; } ;
struct msm_rpc_endpoint {int dummy; } ;
struct file {scalar_t__ private_data; } ;
typedef int server_args ;


 int EINVAL ;
 int MSM_RPC_GET_MINOR (int ) ;
 int RPCROUTER_MSGSIZE_MAX ;





 int RPC_ROUTER_VERSION_V1 ;
 int copy_from_user (struct rpcrouter_ioctl_server_args*,void*,int) ;
 int msm_rpc_get_vers (struct msm_rpc_endpoint*) ;
 int msm_rpc_register_server (struct msm_rpc_endpoint*,int ,int ) ;
 int msm_rpc_unregister_server (struct msm_rpc_endpoint*,int ,int ) ;
 int put_user (int ,unsigned int*) ;

__attribute__((used)) static long rpcrouter_ioctl(struct file *filp, unsigned int cmd,
       unsigned long arg)
{
 struct msm_rpc_endpoint *ept;
 struct rpcrouter_ioctl_server_args server_args;
 int rc = 0;
 uint32_t n;

 ept = (struct msm_rpc_endpoint *) filp->private_data;
 switch (cmd) {

 case 130:
  n = RPC_ROUTER_VERSION_V1;
  rc = put_user(n, (unsigned int *) arg);
  break;

 case 131:



  n = RPCROUTER_MSGSIZE_MAX - sizeof(uint32_t);
  rc = put_user(n, (unsigned int *) arg);
  break;

 case 129:
  rc = copy_from_user(&server_args, (void *) arg,
        sizeof(server_args));
  if (rc < 0)
   break;
  msm_rpc_register_server(ept,
     server_args.prog,
     server_args.vers);
  break;

 case 128:
  rc = copy_from_user(&server_args, (void *) arg,
        sizeof(server_args));
  if (rc < 0)
   break;

  msm_rpc_unregister_server(ept,
       server_args.prog,
       server_args.vers);
  break;

 case 132:
  n = MSM_RPC_GET_MINOR(msm_rpc_get_vers(ept));
  rc = put_user(n, (unsigned int *)arg);
  break;

 default:
  rc = -EINVAL;
  break;
 }

 return rc;
}
