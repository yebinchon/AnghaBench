
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snmp_pdu {int request_id; } ;
struct sent_pdu {int retrycount; int timeout_id; void* arg; int callback; int reqid; int time; struct snmp_pdu* pdu; } ;
typedef int snmp_send_cb_f ;
typedef int int32_t ;
struct TYPE_3__ {int timeout; int (* timeout_start ) (int *,int ,struct sent_pdu*) ;} ;


 int LIST_INSERT_HEAD (int *,struct sent_pdu*,int ) ;
 int entries ;
 int errno ;
 int free (struct sent_pdu*) ;
 int gettimeofday (int *,int *) ;
 struct sent_pdu* malloc (int) ;
 int sent_pdus ;
 int seterr (TYPE_1__*,char*,int ) ;
 TYPE_1__ snmp_client ;
 int snmp_send_packet (struct snmp_pdu*) ;
 int snmp_timeout ;
 int strerror (int ) ;
 int stub1 (int *,int ,struct sent_pdu*) ;
 int warn (char*) ;

int32_t
snmp_pdu_send(struct snmp_pdu *pdu, snmp_send_cb_f func, void *arg)
{
 struct sent_pdu *listentry;
 int32_t id;

 if ((listentry = malloc(sizeof(struct sent_pdu))) == ((void*)0)) {
  seterr(&snmp_client, "%s", strerror(errno));
  return (-1);
 }


 if ((id = snmp_send_packet(pdu)) == -1) {
  free(listentry);
  return (-1);
 }


 listentry->pdu = pdu;
 if (gettimeofday(&listentry->time, ((void*)0)) == -1)
  warn("gettimeofday() failed");

 listentry->reqid = pdu->request_id;
 listentry->callback = func;
 listentry->arg = arg;
 listentry->retrycount=1;
 listentry->timeout_id =
     snmp_client.timeout_start(&snmp_client.timeout, snmp_timeout,
     listentry);

 LIST_INSERT_HEAD(&sent_pdus, listentry, entries);

 return (id);
}
