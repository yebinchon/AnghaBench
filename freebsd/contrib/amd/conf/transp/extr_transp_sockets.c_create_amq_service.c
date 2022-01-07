
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct netconfig {int dummy; } ;
typedef int SVCXPRT ;


 int AF_INET ;
 int AMQ_SIZE ;
 int RPC_MAXDATASIZE ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SVCSET_CONNMAXREC ;
 int SVC_CONTROL (int *,int ,int*) ;
 int XLOG_FATAL ;
 scalar_t__ bind_resv_port (int,int*) ;
 int plog (int ,char*,...) ;
 int socket (int ,int ,int ) ;
 int * svctcp_create (int,int ,int ) ;
 int * svcudp_bufcreate (int,int ,int ) ;

int
create_amq_service(int *udp_soAMQp,
     SVCXPRT **udp_amqpp,
     struct netconfig **dummy1,
     int *tcp_soAMQp,
     SVCXPRT **tcp_amqpp,
     struct netconfig **dummy2,
     u_short preferred_amq_port)
{

  if (tcp_soAMQp) {
    *tcp_soAMQp = socket(AF_INET, SOCK_STREAM, 0);
    if (*tcp_soAMQp < 0) {
      plog(XLOG_FATAL, "cannot create tcp socket for amq service: %m");
      return 1;
    }


    if (preferred_amq_port > 0) {






      if (bind_resv_port(*tcp_soAMQp, &preferred_amq_port) < 0) {
 plog(XLOG_FATAL, "can't bind amq service to requested TCP port %d: %m)", preferred_amq_port);
 return 1;
      }
    }


    if (tcp_amqpp &&
 (*tcp_amqpp = svctcp_create(*tcp_soAMQp, AMQ_SIZE, AMQ_SIZE)) == ((void*)0)) {
      plog(XLOG_FATAL, "cannot create tcp service for amq: soAMQp=%d", *tcp_soAMQp);
      return 1;
    }
  }


  if (udp_soAMQp) {
    *udp_soAMQp = socket(AF_INET, SOCK_DGRAM, 0);
    if (*udp_soAMQp < 0) {
      plog(XLOG_FATAL, "cannot create udp socket for amq service: %m");
      return 1;
    }


    if (preferred_amq_port > 0) {




      if (bind_resv_port(*udp_soAMQp, &preferred_amq_port) < 0) {
 plog(XLOG_FATAL, "can't bind amq service to requested UDP port %d: %m)", preferred_amq_port);
 return 1;
      }
    }


    if (udp_amqpp &&
 (*udp_amqpp = svcudp_bufcreate(*udp_soAMQp, AMQ_SIZE, AMQ_SIZE)) == ((void*)0)) {
      plog(XLOG_FATAL, "cannot create udp service for amq: soAMQp=%d", *udp_soAMQp);
      return 1;
    }
  }

  return 0;
}
