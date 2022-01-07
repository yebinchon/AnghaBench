
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct p9_req_t {int rc; } ;
struct p9_qid {int version; scalar_t__ path; int type; } ;
struct p9_fid {int mode; int iounit; int fid; struct p9_client* clnt; } ;
struct p9_client {int dotu; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_DPRINTK (int ,char*,int ,...) ;
 int P9_TCREATE ;
 int PTR_ERR (struct p9_req_t*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,char*,int ,int,char*) ;
 int p9_free_req (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_dump (int,int ) ;
 int p9pdu_readf (int ,int ,char*,struct p9_qid*,int*) ;

int p9_client_fcreate(struct p9_fid *fid, char *name, u32 perm, int mode,
       char *extension)
{
 int err;
 struct p9_client *clnt;
 struct p9_req_t *req;
 struct p9_qid qid;
 int iounit;

 P9_DPRINTK(P9_DEBUG_9P, ">>> TCREATE fid %d name %s perm %d mode %d\n",
      fid->fid, name, perm, mode);
 err = 0;
 clnt = fid->clnt;

 if (fid->mode != -1)
  return -EINVAL;

 req = p9_client_rpc(clnt, P9_TCREATE, "dsdb?s", fid->fid, name, perm,
    mode, extension);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }

 err = p9pdu_readf(req->rc, clnt->dotu, "Qd", &qid, &iounit);
 if (err) {
  p9pdu_dump(1, req->rc);
  goto free_and_error;
 }

 P9_DPRINTK(P9_DEBUG_9P, "<<< RCREATE qid %x.%llx.%x iounit %x\n",
    qid.type,
    (unsigned long long)qid.path,
    qid.version, iounit);

 fid->mode = mode;
 fid->iounit = iounit;

free_and_error:
 p9_free_req(clnt, req);
error:
 return err;
}
