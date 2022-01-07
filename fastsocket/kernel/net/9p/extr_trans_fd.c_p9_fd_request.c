
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_trans_fd {struct p9_conn* conn; } ;
struct p9_req_t {int req_list; int status; TYPE_1__* tc; } ;
struct p9_conn {scalar_t__ err; int wq; int wsched; int client; int unsent_req_list; } ;
struct p9_client {int lock; struct p9_trans_fd* trans; } ;
struct TYPE_2__ {int id; } ;


 int P9_DEBUG_TRANS ;
 int P9_DPRINTK (int ,char*,struct p9_conn*,int ,TYPE_1__*,int ) ;
 int POLLOUT ;
 int REQ_STATUS_UNSENT ;
 int Wpending ;
 int Wworksched ;
 int current ;
 int list_add_tail (int *,int *) ;
 int p9_fd_poll (int ,int *) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int p9_fd_request(struct p9_client *client, struct p9_req_t *req)
{
 int n;
 struct p9_trans_fd *ts = client->trans;
 struct p9_conn *m = ts->conn;

 P9_DPRINTK(P9_DEBUG_TRANS, "mux %p task %p tcall %p id %d\n", m,
      current, req->tc, req->tc->id);
 if (m->err < 0)
  return m->err;

 spin_lock(&client->lock);
 req->status = REQ_STATUS_UNSENT;
 list_add_tail(&req->req_list, &m->unsent_req_list);
 spin_unlock(&client->lock);

 if (test_and_clear_bit(Wpending, &m->wsched))
  n = POLLOUT;
 else
  n = p9_fd_poll(m->client, ((void*)0));

 if (n & POLLOUT && !test_and_set_bit(Wworksched, &m->wsched))
  schedule_work(&m->wq);

 return 0;
}
