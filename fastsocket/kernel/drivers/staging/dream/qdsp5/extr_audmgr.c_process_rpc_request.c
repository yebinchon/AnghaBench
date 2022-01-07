
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct audmgr {int ept; } ;


 scalar_t__ AUDMGR_CB_FUNC_PTR ;
 int be32_to_cpu (int ) ;
 int pr_err (char*,scalar_t__) ;
 int pr_info (char*,scalar_t__) ;
 int printk (char*,...) ;
 int process_audmgr_callback (struct audmgr*,void*,int) ;
 int rpc_ack (int ,scalar_t__) ;

__attribute__((used)) static void process_rpc_request(uint32_t proc, uint32_t xid,
    void *data, int len, void *private)
{
 struct audmgr *am = private;
 uint32_t *x = data;

 if (0) {
  int n = len / 4;
  pr_info("rpc_call proc %d:", proc);
  while (n--)
   printk(" %08x", be32_to_cpu(*x++));
  printk("\n");
 }

 if (proc == AUDMGR_CB_FUNC_PTR)
  process_audmgr_callback(am, data, len);
 else
  pr_err("audmgr: unknown rpc proc %d\n", proc);
 rpc_ack(am->ept, xid);
}
