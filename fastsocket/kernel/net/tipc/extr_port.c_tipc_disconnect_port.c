
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_port {scalar_t__ connected; } ;
struct port {int subscription; } ;


 int ENOTCONN ;
 int tipc_nodesub_unsubscribe (int *) ;

int tipc_disconnect_port(struct tipc_port *tp_ptr)
{
 int res;

 if (tp_ptr->connected) {
  tp_ptr->connected = 0;

  tipc_nodesub_unsubscribe(
   &((struct port *)tp_ptr)->subscription);
  res = 0;
 } else {
  res = -ENOTCONN;
 }
 return res;
}
