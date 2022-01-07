
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_release_lockowner_data {int lsp; int server; } ;


 int kfree (void*) ;
 int nfs4_free_lock_state (int ,int ) ;

__attribute__((used)) static void nfs4_release_lockowner_release(void *calldata)
{
 struct nfs_release_lockowner_data *data = calldata;
 nfs4_free_lock_state(data->server, data->lsp);
 kfree(calldata);
}
