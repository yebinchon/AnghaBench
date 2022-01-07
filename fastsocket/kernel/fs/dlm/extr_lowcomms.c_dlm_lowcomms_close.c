
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_node_addr {size_t addr_count; struct dlm_node_addr** addr; int list; } ;
struct connection {int rwork; int swork; int flags; } ;


 int CF_CLOSE ;
 int CF_CONNECT_PENDING ;
 int CF_WRITE_PENDING ;
 scalar_t__ cancel_work_sync (int *) ;
 int clean_one_writequeue (struct connection*) ;
 int clear_bit (int ,int *) ;
 int close_connection (struct connection*,int) ;
 int dlm_node_addrs_spin ;
 struct dlm_node_addr* find_node_addr (int) ;
 int kfree (struct dlm_node_addr*) ;
 int list_del (int *) ;
 int log_print (char*,int) ;
 struct connection* nodeid2con (int,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_lowcomms_close(int nodeid)
{
 struct connection *con;
 struct dlm_node_addr *na;

 log_print("closing connection to node %d", nodeid);
 con = nodeid2con(nodeid, 0);
 if (con) {
  clear_bit(CF_CONNECT_PENDING, &con->flags);
  clear_bit(CF_WRITE_PENDING, &con->flags);
  set_bit(CF_CLOSE, &con->flags);
  if (cancel_work_sync(&con->swork))
   log_print("canceled swork for node %d", nodeid);
  if (cancel_work_sync(&con->rwork))
   log_print("canceled rwork for node %d", nodeid);
  clean_one_writequeue(con);
  close_connection(con, 1);
 }

 spin_lock(&dlm_node_addrs_spin);
 na = find_node_addr(nodeid);
 if (na) {
  list_del(&na->list);
  while (na->addr_count--)
   kfree(na->addr[na->addr_count]);
  kfree(na);
 }
 spin_unlock(&dlm_node_addrs_spin);

 return 0;
}
