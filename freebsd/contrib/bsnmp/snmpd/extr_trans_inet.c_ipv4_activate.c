
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_sock {int dummy; } ;
struct inet_port {int row_status; int socks; } ;


 int RowStatus_active ;
 int const SNMP_ERR_NOERROR ;
 struct port_sock* TAILQ_FIRST (int *) ;
 int TAILQ_NEXT (struct port_sock*,int ) ;
 int assert (int) ;
 int ipv4_activate_sock (struct port_sock*) ;
 int link ;

__attribute__((used)) static int
ipv4_activate(struct inet_port *p)
{
 struct port_sock *sock = TAILQ_FIRST(&p->socks);
 assert(sock);
 assert(!TAILQ_NEXT(sock, link));

 const int ret = ipv4_activate_sock(sock);
 if (ret == SNMP_ERR_NOERROR)
  p->row_status = RowStatus_active;

 return (ret);
}
