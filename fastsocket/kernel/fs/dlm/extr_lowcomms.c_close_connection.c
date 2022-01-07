
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int sock_mutex; scalar_t__ retries; int * rx_page; struct connection* othercon; int * sock; } ;


 int __free_page (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sock_release (int *) ;

__attribute__((used)) static void close_connection(struct connection *con, bool and_other)
{
 mutex_lock(&con->sock_mutex);

 if (con->sock) {
  sock_release(con->sock);
  con->sock = ((void*)0);
 }
 if (con->othercon && and_other) {

  close_connection(con->othercon, 0);
 }
 if (con->rx_page) {
  __free_page(con->rx_page);
  con->rx_page = ((void*)0);
 }

 con->retries = 0;
 mutex_unlock(&con->sock_mutex);
}
