
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_req_t {int status; TYPE_1__* tc; } ;
struct p9_client {int tagpool; } ;
struct TYPE_2__ {int tag; } ;


 int P9_DEBUG_MUX ;
 int P9_DPRINTK (int ,char*,struct p9_client*,struct p9_req_t*,int) ;
 int P9_NOTAG ;
 int REQ_STATUS_IDLE ;
 scalar_t__ p9_idpool_check (int,int ) ;
 int p9_idpool_put (int,int ) ;

__attribute__((used)) static void p9_free_req(struct p9_client *c, struct p9_req_t *r)
{
 int tag = r->tc->tag;
 P9_DPRINTK(P9_DEBUG_MUX, "clnt %p req %p tag: %d\n", c, r, tag);

 r->status = REQ_STATUS_IDLE;
 if (tag != P9_NOTAG && p9_idpool_check(tag, c->tagpool))
  p9_idpool_put(tag, c->tagpool);
}
