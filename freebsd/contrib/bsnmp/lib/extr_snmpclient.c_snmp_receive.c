
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int dummy; } ;
struct snmp_pdu {int dummy; } ;


 int free (struct snmp_pdu*) ;
 struct snmp_pdu* malloc (int) ;
 int memset (struct timeval*,int ,int) ;
 int seterr (int *,char*) ;
 int snmp_client ;
 int snmp_deliver_packet (struct snmp_pdu*) ;
 int snmp_pdu_free (struct snmp_pdu*) ;
 int snmp_receive_packet (struct snmp_pdu*,struct timeval*) ;

int
snmp_receive(int blocking)
{
 int ret;

 struct timeval tv;
 struct snmp_pdu * resp;

 memset(&tv, 0, sizeof(tv));

 resp = malloc(sizeof(struct snmp_pdu));
 if (resp == ((void*)0)) {
  seterr(&snmp_client, "no memory for returning PDU");
  return (-1) ;
 }

 if ((ret = snmp_receive_packet(resp, blocking ? ((void*)0) : &tv)) <= 0) {
  free(resp);
  return (ret);
 }
 ret = snmp_deliver_packet(resp);
 snmp_pdu_free(resp);
 free(resp);
 return (ret);
}
