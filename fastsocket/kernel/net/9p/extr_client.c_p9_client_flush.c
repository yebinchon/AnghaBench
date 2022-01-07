
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {scalar_t__ status; int req_list; int tc; } ;
struct p9_client {int lock; } ;
typedef int int16_t ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_DPRINTK (int ,char*,int ) ;
 int P9_TFLUSH ;
 int PTR_ERR (struct p9_req_t*) ;
 scalar_t__ REQ_STATUS_FLSH ;
 int list_del (int *) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ) ;
 int p9_free_req (struct p9_client*,struct p9_req_t*) ;
 int p9_parse_header (int ,int *,int *,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int p9_client_flush(struct p9_client *c, struct p9_req_t *oldreq)
{
 struct p9_req_t *req;
 int16_t oldtag;
 int err;

 err = p9_parse_header(oldreq->tc, ((void*)0), ((void*)0), &oldtag, 1);
 if (err)
  return err;

 P9_DPRINTK(P9_DEBUG_9P, ">>> TFLUSH tag %d\n", oldtag);

 req = p9_client_rpc(c, P9_TFLUSH, "w", oldtag);
 if (IS_ERR(req))
  return PTR_ERR(req);




 spin_lock(&c->lock);
 if (oldreq->status == REQ_STATUS_FLSH)
  list_del(&oldreq->req_list);
 spin_unlock(&c->lock);

 p9_free_req(c, req);
 return 0;
}
