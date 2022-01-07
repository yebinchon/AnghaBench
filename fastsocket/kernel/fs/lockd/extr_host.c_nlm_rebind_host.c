
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {scalar_t__ h_nextrebind; scalar_t__ h_rpcclnt; int h_name; } ;


 scalar_t__ NLM_HOST_REBIND ;
 int dprintk (char*,int ) ;
 scalar_t__ jiffies ;
 int rpc_force_rebind (scalar_t__) ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;

void
nlm_rebind_host(struct nlm_host *host)
{
 dprintk("lockd: rebind host %s\n", host->h_name);
 if (host->h_rpcclnt && time_after_eq(jiffies, host->h_nextrebind)) {
  rpc_force_rebind(host->h_rpcclnt);
  host->h_nextrebind = jiffies + NLM_HOST_REBIND;
 }
}
