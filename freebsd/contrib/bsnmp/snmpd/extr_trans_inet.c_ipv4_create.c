
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct port_sock {struct inet_port* port; int bind_addr; int input; } ;
struct inet_port_params {int addr_len; int port; int addr; } ;
struct inet_port {int socks; } ;


 int AF_INET ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int TAILQ_INSERT_HEAD (int *,struct port_sock*,int ) ;
 struct port_sock* calloc (int,int) ;
 int htonl (int ) ;
 int htons (int ) ;
 int link ;
 int memcpy (int *,int ,int) ;
 int snmpd_input_init (int *) ;

__attribute__((used)) static int
ipv4_create(struct inet_port *port, struct inet_port_params *params)
{
 uint32_t ip;

 if (params->addr_len != 4)
  return (SNMP_ERR_INCONS_VALUE);

 memcpy(&ip, params->addr, 4);
 struct port_sock *sock = calloc(1, sizeof(struct port_sock));
 if (sock == ((void*)0))
  return (SNMP_ERR_GENERR);

 snmpd_input_init(&sock->input);

 TAILQ_INSERT_HEAD(&port->socks, sock, link);

 struct sockaddr_in *sin =
     (struct sockaddr_in *)&sock->bind_addr;

 sin->sin_len = sizeof(struct sockaddr_in);
 sin->sin_family = AF_INET;
 sin->sin_addr.s_addr = htonl(ip);
 sin->sin_port = htons(params->port);

 sock->port = port;

 return (SNMP_ERR_NOERROR);
}
