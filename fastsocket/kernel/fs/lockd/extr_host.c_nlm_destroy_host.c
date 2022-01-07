
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct nlm_host {struct rpc_clnt* h_rpcclnt; int h_nsmhandle; int h_count; int h_lockowners; } ;


 int BUG_ON (int) ;
 int atomic_read (int *) ;
 int kfree (struct nlm_host*) ;
 int list_empty (int *) ;
 int nsm_release (int ) ;
 int nsm_unmonitor (struct nlm_host*) ;
 int rpc_shutdown_client (struct rpc_clnt*) ;

__attribute__((used)) static void
nlm_destroy_host(struct nlm_host *host)
{
 struct rpc_clnt *clnt;

 BUG_ON(!list_empty(&host->h_lockowners));
 BUG_ON(atomic_read(&host->h_count));

 nsm_unmonitor(host);
 nsm_release(host->h_nsmhandle);

 clnt = host->h_rpcclnt;
 if (clnt != ((void*)0))
  rpc_shutdown_client(clnt);
 kfree(host);
}
