
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct port_sock {int bind_addr; struct inet_port* port; int input; } ;
struct inet_port {char* dns_addr; int row_status; int socks; int dns_port; } ;
struct addrinfo {scalar_t__ ai_family; int ai_flags; scalar_t__ ai_addr; struct addrinfo* ai_next; int ai_socktype; } ;
typedef int hints ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int AI_ADDRCONFIG ;
 int AI_NUMERICSERV ;
 int AI_PASSIVE ;
 int LOG_ERR ;
 int RowStatus_active ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 int SOCK_DGRAM ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct port_sock*,int ) ;
 struct port_sock* calloc (int,int) ;
 int free (struct port_sock*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int ipv4_activate_sock (struct port_sock*) ;
 int ipv6_activate_sock (struct port_sock*) ;
 int link ;
 int memset (struct addrinfo*,int ,int) ;
 int ntohs (int ) ;
 int snmpd_input_init (int *) ;
 int sprintf (char*,char*,int ) ;
 int syslog (int ,char*,char*,int ) ;

__attribute__((used)) static int
dns_activate(struct inet_port *port)
{
 struct addrinfo hints;
 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_UNSPEC;
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_flags = AI_ADDRCONFIG | AI_PASSIVE | AI_NUMERICSERV;

 char portbuf[8];
 sprintf(portbuf, "%hu", ntohs(port->dns_port));

 struct addrinfo *res0;
 int error = getaddrinfo(port->dns_addr[0] == '\0'
     ? ((void*)0) : port->dns_addr,
     portbuf, &hints, &res0);

 if (error) {
  syslog(LOG_ERR, "cannot resolve address '%s': %s",
      port->dns_addr, gai_strerror(error));
  return (SNMP_ERR_GENERR);
 }

 for (struct addrinfo *res = res0; res != ((void*)0); res = res->ai_next) {
  if (res->ai_family != AF_INET && res->ai_family != AF_INET6)
   continue;

  struct port_sock *sock = calloc(1, sizeof(struct port_sock));
  if (sock == ((void*)0))
   return (SNMP_ERR_GENERR);

  snmpd_input_init(&sock->input);
  sock->port = port;

  int ret = SNMP_ERR_NOERROR;

  if (res->ai_family == AF_INET) {
   *(struct sockaddr_in *)&sock->bind_addr =
       *(struct sockaddr_in *)(void *)res->ai_addr;
   ret = ipv4_activate_sock(sock);
  } else {
   *(struct sockaddr_in6 *)&sock->bind_addr =
       *(struct sockaddr_in6 *)(void *)res->ai_addr;
   ret = ipv6_activate_sock(sock);
  }

  if (ret != SNMP_ERR_NOERROR)
   free(sock);
  else
   TAILQ_INSERT_HEAD(&port->socks, sock, link);
 }

 if (!TAILQ_EMPTY(&port->socks))
  port->row_status = RowStatus_active;

 freeaddrinfo(res0);
 return (SNMP_ERR_GENERR);
}
