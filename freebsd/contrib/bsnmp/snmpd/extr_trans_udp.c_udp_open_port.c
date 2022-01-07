
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u_int8_t ;
typedef int u_int32_t ;
struct TYPE_6__ {int len; int* subs; } ;
struct TYPE_8__ {TYPE_1__ index; } ;
struct TYPE_7__ {int fd; int peerlen; struct sockaddr* peer; scalar_t__ cred; scalar_t__ stream; int * id; } ;
struct udp_port {int port; TYPE_3__ tport; TYPE_2__ input; int ret; void** addr; } ;
struct sockaddr {int dummy; } ;


 scalar_t__ COMM_INITIALIZE ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_NO_CREATION ;
 scalar_t__ community ;
 struct udp_port* malloc (int) ;
 int memset (struct udp_port*,int ,int) ;
 int my_trans ;
 int trans_insert_port (int ,TYPE_3__*) ;
 int udp_close_port (TYPE_3__*) ;
 int udp_init_port (TYPE_3__*) ;

__attribute__((used)) static int
udp_open_port(u_int8_t *addr, u_int32_t udp_port, struct udp_port **pp)
{
 struct udp_port *port;
 int err;

 if (udp_port > 0xffff)
  return (SNMP_ERR_NO_CREATION);
 if ((port = malloc(sizeof(*port))) == ((void*)0))
  return (SNMP_ERR_GENERR);
 memset(port, 0, sizeof(*port));


 port->tport.index.len = 5;
 port->tport.index.subs[0] = addr[0];
 port->tport.index.subs[1] = addr[1];
 port->tport.index.subs[2] = addr[2];
 port->tport.index.subs[3] = addr[3];
 port->tport.index.subs[4] = udp_port;

 port->addr[0] = addr[0];
 port->addr[1] = addr[1];
 port->addr[2] = addr[2];
 port->addr[3] = addr[3];
 port->port = udp_port;

 port->input.fd = -1;
 port->input.id = ((void*)0);
 port->input.stream = 0;
 port->input.cred = 0;
 port->input.peer = (struct sockaddr *)&port->ret;
 port->input.peerlen = sizeof(port->ret);

 trans_insert_port(my_trans, &port->tport);

 if (community != COMM_INITIALIZE &&
     (err = udp_init_port(&port->tport)) != SNMP_ERR_NOERROR) {
  udp_close_port(&port->tport);
  return (err);
 }
 *pp = port;
 return (SNMP_ERR_NOERROR);
}
