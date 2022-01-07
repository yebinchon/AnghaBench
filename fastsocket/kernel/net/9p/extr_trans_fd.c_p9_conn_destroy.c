
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; int prev; } ;
struct p9_conn {int * client; int wq; int rq; TYPE_1__ mux_list; } ;


 int ECONNRESET ;
 int P9_DEBUG_TRANS ;
 int P9_DPRINTK (int ,char*,struct p9_conn*,int ,int ) ;
 int cancel_work_sync (int *) ;
 int kfree (struct p9_conn*) ;
 int p9_conn_cancel (struct p9_conn*,int ) ;
 int p9_mux_poll_stop (struct p9_conn*) ;

__attribute__((used)) static void p9_conn_destroy(struct p9_conn *m)
{
 P9_DPRINTK(P9_DEBUG_TRANS, "mux %p prev %p next %p\n", m,
  m->mux_list.prev, m->mux_list.next);

 p9_mux_poll_stop(m);
 cancel_work_sync(&m->rq);
 cancel_work_sync(&m->wq);

 p9_conn_cancel(m, -ECONNRESET);

 m->client = ((void*)0);
 kfree(m);
}
