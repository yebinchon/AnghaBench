
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_conn {scalar_t__ err; int wq; int wsched; int unsent_req_list; scalar_t__ wsize; int rq; int client; } ;


 int ECONNRESET ;
 int P9_DEBUG_TRANS ;
 int P9_DPRINTK (int ,char*,struct p9_conn*,...) ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLNVAL ;
 int POLLOUT ;
 int Rpending ;
 int Rworksched ;
 int Wpending ;
 int Wworksched ;
 int list_empty (int *) ;
 int p9_conn_cancel (struct p9_conn*,int) ;
 int p9_fd_poll (int ,int *) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void p9_poll_mux(struct p9_conn *m)
{
 int n;

 if (m->err < 0)
  return;

 n = p9_fd_poll(m->client, ((void*)0));
 if (n < 0 || n & (POLLERR | POLLHUP | POLLNVAL)) {
  P9_DPRINTK(P9_DEBUG_TRANS, "error mux %p err %d\n", m, n);
  if (n >= 0)
   n = -ECONNRESET;
  p9_conn_cancel(m, n);
 }

 if (n & POLLIN) {
  set_bit(Rpending, &m->wsched);
  P9_DPRINTK(P9_DEBUG_TRANS, "mux %p can read\n", m);
  if (!test_and_set_bit(Rworksched, &m->wsched)) {
   P9_DPRINTK(P9_DEBUG_TRANS, "sched read work %p\n", m);
   schedule_work(&m->rq);
  }
 }

 if (n & POLLOUT) {
  set_bit(Wpending, &m->wsched);
  P9_DPRINTK(P9_DEBUG_TRANS, "mux %p can write\n", m);
  if ((m->wsize || !list_empty(&m->unsent_req_list))
      && !test_and_set_bit(Wworksched, &m->wsched)) {
   P9_DPRINTK(P9_DEBUG_TRANS, "sched write work %p\n", m);
   schedule_work(&m->wq);
  }
 }
}
