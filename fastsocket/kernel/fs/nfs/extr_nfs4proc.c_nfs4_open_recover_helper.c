
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_state {int dummy; } ;
struct TYPE_2__ {int fmode; scalar_t__ open_flags; } ;
struct nfs4_opendata {int c_res; int o_res; TYPE_1__ o_arg; } ;
typedef int fmode_t ;


 scalar_t__ IS_ERR (struct nfs4_state*) ;
 int PTR_ERR (struct nfs4_state*) ;
 int _nfs4_recover_proc_open (struct nfs4_opendata*) ;
 int memset (int *,int ,int) ;
 int nfs4_close_state (struct nfs4_state*,int ) ;
 int nfs4_init_opendata_res (struct nfs4_opendata*) ;
 struct nfs4_state* nfs4_opendata_to_nfs4_state (struct nfs4_opendata*) ;

__attribute__((used)) static int nfs4_open_recover_helper(struct nfs4_opendata *opendata, fmode_t fmode, struct nfs4_state **res)
{
 struct nfs4_state *newstate;
 int ret;

 opendata->o_arg.open_flags = 0;
 opendata->o_arg.fmode = fmode;
 memset(&opendata->o_res, 0, sizeof(opendata->o_res));
 memset(&opendata->c_res, 0, sizeof(opendata->c_res));
 nfs4_init_opendata_res(opendata);
 ret = _nfs4_recover_proc_open(opendata);
 if (ret != 0)
  return ret;
 newstate = nfs4_opendata_to_nfs4_state(opendata);
 if (IS_ERR(newstate))
  return PTR_ERR(newstate);
 nfs4_close_state(newstate, fmode);
 *res = newstate;
 return 0;
}
