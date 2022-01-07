
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {scalar_t__ rpc_client; } ;


 scalar_t__ IS_ERR (scalar_t__) ;
 int MSM_RPC_UNINTERRUPTIBLE ;
 int PTR_ERR (scalar_t__) ;
 int RPC_ADSP_RTOS_ATOM_PROG ;
 int RPC_ADSP_RTOS_ATOM_VERS ;
 scalar_t__ msm_rpc_connect (int ,int ,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int adsp_rpc_init(struct msm_adsp_module *adsp_module)
{

 adsp_module->rpc_client = msm_rpc_connect(
   RPC_ADSP_RTOS_ATOM_PROG,
   RPC_ADSP_RTOS_ATOM_VERS,
   MSM_RPC_UNINTERRUPTIBLE);

 if (IS_ERR(adsp_module->rpc_client)) {
  int rc = PTR_ERR(adsp_module->rpc_client);
  adsp_module->rpc_client = 0;
  pr_err("adsp: could not open rpc client: %d\n", rc);
  return rc;
 }

 return 0;
}
