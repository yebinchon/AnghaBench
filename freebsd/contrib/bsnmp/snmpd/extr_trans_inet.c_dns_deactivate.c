
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_sock {int input; } ;
struct inet_port {int row_status; int socks; } ;


 int RowStatus_notInService ;
 int TAILQ_EMPTY (int *) ;
 struct port_sock* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct port_sock*,int ) ;
 int free (struct port_sock*) ;
 int link ;
 int snmpd_input_close (int *) ;

__attribute__((used)) static void
dns_deactivate(struct inet_port *port)
{
 while (!TAILQ_EMPTY(&port->socks)) {
  struct port_sock *sock = TAILQ_FIRST(&port->socks);
  TAILQ_REMOVE(&port->socks, sock, link);
  snmpd_input_close(&sock->input);
  free(sock);
 }
 port->row_status = RowStatus_notInService;
}
