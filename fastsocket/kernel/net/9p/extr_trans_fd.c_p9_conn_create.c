
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_conn {int wsched; int pt; int poll_pending_link; int wq; int rq; int unsent_req_list; int req_list; struct p9_client* client; int mux_list; } ;
struct p9_client {int msize; } ;


 int ENOMEM ;
 struct p9_conn* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int P9_DEBUG_TRANS ;
 int P9_DPRINTK (int ,char*,...) ;
 int POLLIN ;
 int POLLOUT ;
 int Rpending ;
 int Wpending ;
 int init_poll_funcptr (int *,int ) ;
 struct p9_conn* kzalloc (int,int ) ;
 int p9_fd_poll (struct p9_client*,int *) ;
 int p9_pollwait ;
 int p9_read_work ;
 int p9_write_work ;
 int set_bit (int ,int *) ;

__attribute__((used)) static struct p9_conn *p9_conn_create(struct p9_client *client)
{
 int n;
 struct p9_conn *m;

 P9_DPRINTK(P9_DEBUG_TRANS, "client %p msize %d\n", client,
        client->msize);
 m = kzalloc(sizeof(struct p9_conn), GFP_KERNEL);
 if (!m)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&m->mux_list);
 m->client = client;

 INIT_LIST_HEAD(&m->req_list);
 INIT_LIST_HEAD(&m->unsent_req_list);
 INIT_WORK(&m->rq, p9_read_work);
 INIT_WORK(&m->wq, p9_write_work);
 INIT_LIST_HEAD(&m->poll_pending_link);
 init_poll_funcptr(&m->pt, p9_pollwait);

 n = p9_fd_poll(client, &m->pt);
 if (n & POLLIN) {
  P9_DPRINTK(P9_DEBUG_TRANS, "mux %p can read\n", m);
  set_bit(Rpending, &m->wsched);
 }

 if (n & POLLOUT) {
  P9_DPRINTK(P9_DEBUG_TRANS, "mux %p can write\n", m);
  set_bit(Wpending, &m->wsched);
 }

 return m;
}
