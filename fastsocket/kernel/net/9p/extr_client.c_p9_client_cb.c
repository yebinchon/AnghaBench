
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_req_t {TYPE_1__* tc; int wq; } ;
struct p9_client {int dummy; } ;
struct TYPE_2__ {int tag; } ;


 int P9_DEBUG_MUX ;
 int P9_DPRINTK (int ,char*,int ) ;
 int wake_up (int ) ;

void p9_client_cb(struct p9_client *c, struct p9_req_t *req)
{
 P9_DPRINTK(P9_DEBUG_MUX, " tag %d\n", req->tc->tag);
 wake_up(req->wq);
 P9_DPRINTK(P9_DEBUG_MUX, "wakeup: %d\n", req->tc->tag);
}
