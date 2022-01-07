
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sent_pdu {int * timeout_id; } ;
struct TYPE_2__ {int fd; char* local_path; struct sent_pdu* cport; struct sent_pdu* chost; int (* timeout_stop ) (int *) ;} ;


 int LIST_EMPTY (int *) ;
 struct sent_pdu* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct sent_pdu*,int ) ;
 int close (int) ;
 int entries ;
 int free (struct sent_pdu*) ;
 int remove (char*) ;
 int sent_pdus ;
 TYPE_1__ snmp_client ;
 int stub1 (int *) ;

void
snmp_close(void)
{
 struct sent_pdu *p1;

 if (snmp_client.fd != -1) {
  (void)close(snmp_client.fd);
  snmp_client.fd = -1;
  if (snmp_client.local_path[0] != '\0')
   (void)remove(snmp_client.local_path);
 }
 while(!LIST_EMPTY(&sent_pdus)){
  p1 = LIST_FIRST(&sent_pdus);
  if (p1->timeout_id != ((void*)0))
   snmp_client.timeout_stop(p1->timeout_id);
  LIST_REMOVE(p1, entries);
  free(p1);
 }
 free(snmp_client.chost);
 free(snmp_client.cport);
}
