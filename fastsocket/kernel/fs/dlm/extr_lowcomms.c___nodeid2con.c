
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int nodeid; int rx_action; int connect_action; int rwork; int swork; int writequeue_lock; int writequeue; int sock_mutex; int list; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 struct connection* __find_con (int) ;
 int con_cache ;
 int * connection_hash ;
 int hlist_add_head (int *,int *) ;
 struct connection* kmem_cache_zalloc (int ,int ) ;
 int mutex_init (int *) ;
 int nodeid_hash (int) ;
 int process_recv_sockets ;
 int process_send_sockets ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct connection *__nodeid2con(int nodeid, gfp_t alloc)
{
 struct connection *con = ((void*)0);
 int r;

 con = __find_con(nodeid);
 if (con || !alloc)
  return con;

 con = kmem_cache_zalloc(con_cache, alloc);
 if (!con)
  return ((void*)0);

 r = nodeid_hash(nodeid);
 hlist_add_head(&con->list, &connection_hash[r]);

 con->nodeid = nodeid;
 mutex_init(&con->sock_mutex);
 INIT_LIST_HEAD(&con->writequeue);
 spin_lock_init(&con->writequeue_lock);
 INIT_WORK(&con->swork, process_send_sockets);
 INIT_WORK(&con->rwork, process_recv_sockets);


 if (con->nodeid) {
  struct connection *zerocon = __find_con(0);

  con->connect_action = zerocon->connect_action;
  if (!con->rx_action)
   con->rx_action = zerocon->rx_action;
 }

 return con;
}
