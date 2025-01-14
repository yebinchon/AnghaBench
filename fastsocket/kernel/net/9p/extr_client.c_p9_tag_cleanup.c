
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_client {int max_tag; TYPE_1__** reqs; scalar_t__ tagpool; } ;
struct TYPE_2__ {scalar_t__ status; struct TYPE_2__* rc; struct TYPE_2__* tc; struct TYPE_2__* wq; } ;


 int P9_DEBUG_MUX ;
 int P9_DPRINTK (int ,char*,int,int) ;
 int P9_ROW_MAXTAG ;
 scalar_t__ REQ_STATUS_IDLE ;
 int kfree (TYPE_1__*) ;
 int p9_idpool_destroy (scalar_t__) ;

__attribute__((used)) static void p9_tag_cleanup(struct p9_client *c)
{
 int row, col;


 for (row = 0; row < (c->max_tag/P9_ROW_MAXTAG); row++) {
  for (col = 0; col < P9_ROW_MAXTAG; col++) {
   if (c->reqs[row][col].status != REQ_STATUS_IDLE) {
    P9_DPRINTK(P9_DEBUG_MUX,
      "Attempting to cleanup non-free tag %d,%d\n",
      row, col);

    return;
   }
  }
 }

 if (c->tagpool)
  p9_idpool_destroy(c->tagpool);


 for (row = 0; row < (c->max_tag/P9_ROW_MAXTAG); row++) {
  for (col = 0; col < P9_ROW_MAXTAG; col++) {
   kfree(c->reqs[row][col].wq);
   kfree(c->reqs[row][col].tc);
   kfree(c->reqs[row][col].rc);
  }
  kfree(c->reqs[row]);
 }
 c->max_tag = 0;
}
