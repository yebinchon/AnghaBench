
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_request_hdr {int procedure; int xid; } ;


 int RPC_ACCEPTSTAT_PROC_UNAVAIL ;
 int RPC_ACCEPTSTAT_SUCCESS ;


 int handle_adsp_rtos_mtoa_app (struct rpc_request_hdr*) ;
 int pr_err (char*,int) ;
 int rpc_cb_server_client ;
 int rpc_send_accepted_void_reply (int ,int ,int ) ;

__attribute__((used)) static int handle_adsp_rtos_mtoa(struct rpc_request_hdr *req)
{
 switch (req->procedure) {
 case 128:
  rpc_send_accepted_void_reply(rpc_cb_server_client,
          req->xid,
          RPC_ACCEPTSTAT_SUCCESS);
  break;
 case 129:
  handle_adsp_rtos_mtoa_app(req);
  break;
 default:
  pr_err("adsp: unknowned proc %d\n", req->procedure);
  rpc_send_accepted_void_reply(
   rpc_cb_server_client, req->xid,
   RPC_ACCEPTSTAT_PROC_UNAVAIL);
  break;
 }
 return 0;
}
