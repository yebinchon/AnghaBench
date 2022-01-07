
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
struct tport {TYPE_5__* transport; int index; } ;
struct sockaddr_in {int sin_addr; } ;
struct snmp_value {int dummy; } ;
struct snmp_pdu {scalar_t__ type; scalar_t__ version; } ;
struct port_input {scalar_t__ length; int peerlen; TYPE_4__* peer; int buf; scalar_t__ priv; scalar_t__ cred; scalar_t__ stream; int consumed; } ;
typedef int ssize_t ;
typedef int int32_t ;
typedef enum snmpd_proxy_err { ____Placeholder_snmpd_proxy_err } snmpd_proxy_err ;
typedef enum snmpd_input_err { ____Placeholder_snmpd_input_err } snmpd_input_err ;
typedef int client ;
struct TYPE_17__ {scalar_t__ private; TYPE_2__* owner; } ;
struct TYPE_16__ {scalar_t__ auth_traps; } ;
struct TYPE_15__ {int silentDrops; int inBadCommunityUses; int inBadPduTypes; int inBadCommunityNames; int proxyDrops; } ;
struct TYPE_14__ {TYPE_3__* vtab; } ;
struct TYPE_13__ {scalar_t__ sa_family; } ;
struct TYPE_12__ {int (* recv ) (struct tport*,struct port_input*) ;int (* send ) (struct tport*,int *,size_t,TYPE_4__*,int ) ;int (* send2 ) (struct tport*,int *,size_t,struct port_input*) ;} ;
struct TYPE_11__ {TYPE_1__* config; } ;
struct TYPE_10__ {int (* proxy ) (struct snmp_pdu*,TYPE_5__*,int *,TYPE_4__*,int ,int,int ,int) ;} ;


 scalar_t__ AF_LOCAL ;
 scalar_t__ COMM_READ ;
 scalar_t__ COMM_WRITE ;
 int INET6_ADDRSTRLEN ;
 int LOG_ERR ;
 int RQ_CLIENT_ADDR ;
 int SNMPD_INPUT_BAD_COMM ;
 int SNMPD_INPUT_FAILED ;
 int SNMPD_INPUT_OK ;
 int SNMPD_INPUT_TRUNC ;





 scalar_t__ SNMP_PDU_RESPONSE ;
 scalar_t__ SNMP_PDU_SET ;
 scalar_t__ SNMP_PDU_TRAP ;
 scalar_t__ SNMP_PDU_TRAP2 ;
 scalar_t__ SNMP_V3 ;
 int * buf_alloc (int) ;
 scalar_t__ buf_size (int ) ;
 TYPE_9__* comm ;
 int eval_client (int *) ;
 int free (int *) ;
 scalar_t__ hosts_access (int *) ;
 int * inet_ntop (scalar_t__,int *,char*,int) ;
 int oid_authenticationFailure ;
 int req ;
 int request_set (int *,int ,char*,int ) ;
 int snmp_input_consume (struct port_input*) ;
 int snmp_input_finish (struct snmp_pdu*,int ,scalar_t__,int *,size_t*,char*,int,int ,int *) ;
 int snmp_input_start (int ,scalar_t__,char*,struct snmp_pdu*,int *,int *) ;
 int snmp_pdu_free (struct snmp_pdu*) ;
 int snmp_send_trap (int *,struct snmp_value*) ;
 TYPE_8__ snmpd ;
 TYPE_7__ snmpd_stats ;
 int stub1 (struct tport*,struct port_input*) ;
 int stub2 (struct snmp_pdu*,TYPE_5__*,int *,TYPE_4__*,int ,int,int ,int) ;
 int stub3 (struct tport*,int *,size_t,TYPE_4__*,int ) ;
 int stub4 (struct tport*,int *,size_t,struct port_input*) ;
 int syslog (int ,char*,...) ;

int
snmpd_input(struct port_input *pi, struct tport *tport)
{
 u_char *sndbuf;
 size_t sndlen;
 struct snmp_pdu pdu;
 enum snmpd_input_err ierr, ferr;
 enum snmpd_proxy_err perr;
 ssize_t ret, slen;
 int32_t vi;




 ret = tport->transport->vtab->recv(tport, pi);
 if (ret == -1)
  return (-1);
 ierr = snmp_input_start(pi->buf, pi->length, "SNMP", &pdu, &vi,
     &pi->consumed);
 if (ierr == SNMPD_INPUT_TRUNC) {


  if (pi->stream) {
   if (pi->length == buf_size(0)) {
    snmpd_stats.silentDrops++;
    return (-1);
   }
   return (0);
  }
  snmpd_stats.silentDrops++;
  return (-1);
 }




 if (ierr == SNMPD_INPUT_FAILED) {

  if (pi->stream)
   return (-1);
  snmp_input_consume(pi);
  return (0);
 }
 if (ierr == SNMPD_INPUT_BAD_COMM) {
  snmp_input_consume(pi);
  return (0);
 }





 if (comm != ((void*)0) && comm->owner != ((void*)0) &&
     comm->owner->config->proxy != ((void*)0)) {
  perr = (*comm->owner->config->proxy)(&pdu, tport->transport,
      &tport->index, pi->peer, pi->peerlen, ierr, vi,
      !pi->cred || pi->priv);

  switch (perr) {

    case 129:
   snmp_input_consume(pi);
   return (0);

    case 128:
   break;

    case 130:
   snmp_input_consume(pi);
   snmp_pdu_free(&pdu);
   snmpd_stats.proxyDrops++;
   return (0);

    case 132:
   snmp_input_consume(pi);
   snmp_pdu_free(&pdu);
   snmpd_stats.inBadCommunityNames++;
   if (snmpd.auth_traps)
    snmp_send_trap(&oid_authenticationFailure,
        (struct snmp_value *)((void*)0));
   return (0);

    case 131:
   snmp_input_consume(pi);
   snmp_pdu_free(&pdu);
   snmpd_stats.inBadCommunityUses++;
   if (snmpd.auth_traps)
    snmp_send_trap(&oid_authenticationFailure,
        (struct snmp_value *)((void*)0));
   return (0);
  }
 }




 if (pdu.type == SNMP_PDU_RESPONSE ||
     pdu.type == SNMP_PDU_TRAP ||
     pdu.type == SNMP_PDU_TRAP2) {
  snmpd_stats.silentDrops++;
  snmpd_stats.inBadPduTypes++;
  snmp_pdu_free(&pdu);
  snmp_input_consume(pi);
  return (0);
 }




 if (pdu.version < SNMP_V3 &&
     ((pi->cred && !pi->priv && pdu.type == SNMP_PDU_SET) ||
     (comm != ((void*)0) && comm->private != COMM_WRITE &&
            (pdu.type == SNMP_PDU_SET || comm->private != COMM_READ)))) {
  snmpd_stats.inBadCommunityUses++;
  snmp_pdu_free(&pdu);
  snmp_input_consume(pi);
  if (snmpd.auth_traps)
   snmp_send_trap(&oid_authenticationFailure,
       (struct snmp_value *)((void*)0));
  return (0);
 }




 if ((sndbuf = buf_alloc(1)) == ((void*)0)) {
  snmpd_stats.silentDrops++;
  snmp_pdu_free(&pdu);
  snmp_input_consume(pi);
  return (0);
 }
 ferr = snmp_input_finish(&pdu, pi->buf, pi->length,
     sndbuf, &sndlen, "SNMP", ierr, vi, ((void*)0));

 if (ferr == SNMPD_INPUT_OK) {
  if (tport->transport->vtab->send != ((void*)0))
   slen = tport->transport->vtab->send(tport, sndbuf,
       sndlen, pi->peer, pi->peerlen);
  else
   slen = tport->transport->vtab->send2(tport, sndbuf,
       sndlen, pi);
  if (slen == -1)
   syslog(LOG_ERR, "send*: %m");
  else if ((size_t)slen != sndlen)
   syslog(LOG_ERR, "send*: short write %zu/%zu", sndlen,
       (size_t)slen);
 }

 snmp_pdu_free(&pdu);
 free(sndbuf);
 snmp_input_consume(pi);

 return (0);
}
