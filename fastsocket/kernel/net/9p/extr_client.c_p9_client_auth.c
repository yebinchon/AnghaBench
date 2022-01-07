
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct p9_req_t {int qid; int rc; int fid; } ;
struct p9_qid {int version; scalar_t__ path; int type; } ;
struct p9_fid {int qid; int rc; int fid; } ;
struct p9_client {int dotu; } ;


 struct p9_req_t* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_DPRINTK (int ,char*,char*,...) ;
 int P9_NOFID ;
 int P9_TAUTH ;
 int PTR_ERR (struct p9_req_t*) ;
 int memmove (int *,struct p9_qid*,int) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,char*,char*,int ) ;
 struct p9_req_t* p9_fid_create (struct p9_client*) ;
 int p9_fid_destroy (struct p9_req_t*) ;
 int p9_free_req (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_dump (int,int ) ;
 int p9pdu_readf (int ,int ,char*,struct p9_qid*) ;

struct p9_fid *
p9_client_auth(struct p9_client *clnt, char *uname, u32 n_uname, char *aname)
{
 int err;
 struct p9_req_t *req;
 struct p9_qid qid;
 struct p9_fid *afid;

 P9_DPRINTK(P9_DEBUG_9P, ">>> TAUTH uname %s aname %s\n", uname, aname);
 err = 0;

 afid = p9_fid_create(clnt);
 if (IS_ERR(afid)) {
  err = PTR_ERR(afid);
  afid = ((void*)0);
  goto error;
 }

 req = p9_client_rpc(clnt, P9_TAUTH, "dss?d",
   afid ? afid->fid : P9_NOFID, uname, aname, n_uname);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }

 err = p9pdu_readf(req->rc, clnt->dotu, "Q", &qid);
 if (err) {
  p9pdu_dump(1, req->rc);
  p9_free_req(clnt, req);
  goto error;
 }

 P9_DPRINTK(P9_DEBUG_9P, "<<< RAUTH qid %x.%llx.%x\n",
     qid.type,
     (unsigned long long)qid.path,
     qid.version);

 memmove(&afid->qid, &qid, sizeof(struct p9_qid));
 p9_free_req(clnt, req);
 return afid;

error:
 if (afid)
  p9_fid_destroy(afid);
 return ERR_PTR(err);
}
