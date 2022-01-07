
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int dummy; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_DPRINTK (int ,char*,int ) ;
 int P9_TREMOVE ;
 int PTR_ERR (struct p9_req_t*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ) ;
 int p9_fid_destroy (struct p9_fid*) ;
 int p9_free_req (struct p9_client*,struct p9_req_t*) ;

int p9_client_remove(struct p9_fid *fid)
{
 int err;
 struct p9_client *clnt;
 struct p9_req_t *req;

 P9_DPRINTK(P9_DEBUG_9P, ">>> TREMOVE fid %d\n", fid->fid);
 err = 0;
 clnt = fid->clnt;

 req = p9_client_rpc(clnt, P9_TREMOVE, "d", fid->fid);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }

 P9_DPRINTK(P9_DEBUG_9P, "<<< RREMOVE fid %d\n", fid->fid);

 p9_free_req(clnt, req);
 p9_fid_destroy(fid);

error:
 return err;
}
