
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sent_pdu {scalar_t__ retrycount; int timeout_id; int pdu; int reqid; int arg; int (* callback ) (int ,int *,int ) ;} ;
struct TYPE_2__ {scalar_t__ retries; int timeout; int (* timeout_start ) (int *,void (*) (void*),struct sent_pdu*) ;} ;


 int LIST_REMOVE (struct sent_pdu*,int ) ;
 int entries ;
 int free (struct sent_pdu*) ;
 TYPE_1__ snmp_client ;
 int snmp_send_packet (int ) ;
 int stub1 (int ,int *,int ) ;
 int stub2 (int *,void (*) (void*),struct sent_pdu*) ;
 int warnx (char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
snmp_timeout(void * listentry_ptr)
{
 struct sent_pdu *listentry = listentry_ptr;






 listentry->retrycount++;
 if (listentry->retrycount > snmp_client.retries) {

  LIST_REMOVE(listentry, entries);
  listentry->callback(listentry->pdu, ((void*)0), listentry->arg);
  free(listentry);
 } else {


  listentry->reqid = snmp_send_packet(listentry->pdu);
  listentry->timeout_id =
      snmp_client.timeout_start(&snmp_client.timeout,
      snmp_timeout, listentry);
 }
}
