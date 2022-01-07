
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_state {int dummy; } ;
struct TYPE_2__ {int fmode; } ;
struct nfs4_opendata {scalar_t__ cancelled; TYPE_1__ o_arg; int rpc_done; } ;


 int IS_ERR (struct nfs4_state*) ;
 int nfs4_close_state (struct nfs4_state*,int ) ;
 int nfs4_opendata_put (struct nfs4_opendata*) ;
 struct nfs4_state* nfs4_opendata_to_nfs4_state (struct nfs4_opendata*) ;

__attribute__((used)) static void nfs4_open_confirm_release(void *calldata)
{
 struct nfs4_opendata *data = calldata;
 struct nfs4_state *state = ((void*)0);


 if (data->cancelled == 0)
  goto out_free;

 if (!data->rpc_done)
  goto out_free;
 state = nfs4_opendata_to_nfs4_state(data);
 if (!IS_ERR(state))
  nfs4_close_state(state, data->o_arg.fmode);
out_free:
 nfs4_opendata_put(data);
}
