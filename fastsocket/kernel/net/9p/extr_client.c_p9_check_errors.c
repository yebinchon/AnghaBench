
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int rc; } ;
struct p9_client {scalar_t__ dotu; } ;
typedef scalar_t__ int8_t ;


 int IS_ERR_VALUE (int) ;
 int P9_DEBUG_9P ;
 int P9_DEBUG_ERROR ;
 int P9_DPRINTK (int ,char*,int,...) ;
 scalar_t__ P9_RERROR ;
 int kfree (char*) ;
 int p9_errstr2errno (char*,int ) ;
 int p9_parse_header (int ,int *,scalar_t__*,int *,int ) ;
 int p9pdu_readf (int ,scalar_t__,char*,char**,int*) ;
 int strlen (char*) ;

__attribute__((used)) static int p9_check_errors(struct p9_client *c, struct p9_req_t *req)
{
 int8_t type;
 int err;

 err = p9_parse_header(req->rc, ((void*)0), &type, ((void*)0), 0);
 if (err) {
  P9_DPRINTK(P9_DEBUG_ERROR, "couldn't parse header %d\n", err);
  return err;
 }

 if (type == P9_RERROR) {
  int ecode;
  char *ename;

  err = p9pdu_readf(req->rc, c->dotu, "s?d", &ename, &ecode);
  if (err) {
   P9_DPRINTK(P9_DEBUG_ERROR, "couldn't parse error%d\n",
         err);
   return err;
  }

  if (c->dotu)
   err = -ecode;

  if (!err || !IS_ERR_VALUE(err))
   err = p9_errstr2errno(ename, strlen(ename));

  P9_DPRINTK(P9_DEBUG_9P, "<<< RERROR (%d) %s\n", -ecode, ename);

  kfree(ename);
 } else
  err = 0;

 return err;
}
