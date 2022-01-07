
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tport {int dummy; } ;
struct lsock_port {scalar_t__ str_sock; struct lsock_port* name; int peers; int * str_id; } ;
struct lsock_peer {int dummy; } ;


 struct lsock_peer* LIST_FIRST (int *) ;
 int close (scalar_t__) ;
 int fd_deselect (int *) ;
 int free (struct lsock_port*) ;
 int lsock_peer_close (struct lsock_peer*) ;
 int remove (struct lsock_port*) ;
 int trans_remove_port (struct tport*) ;

__attribute__((used)) static void
lsock_close_port(struct tport *tp)
{
 struct lsock_port *port = (struct lsock_port *)tp;
 struct lsock_peer *peer;

 if (port->str_id != ((void*)0))
  fd_deselect(port->str_id);
 if (port->str_sock >= 0)
  (void)close(port->str_sock);
 (void)remove(port->name);

 trans_remove_port(tp);

 while ((peer = LIST_FIRST(&port->peers)) != ((void*)0))
  lsock_peer_close(peer);

 free(port->name);
 free(port);
}
