
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct snmp_pdu {int request_id; } ;
struct asn_buf {int * asn_ptr; int asn_len; } ;
typedef int ssize_t ;
typedef int int32_t ;
struct TYPE_4__ {int fd; scalar_t__ dump_pdus; int txbuflen; } ;


 int * calloc (int,int ) ;
 int errno ;
 int free (int *) ;
 int send (int ,int *,int *,int ) ;
 int seterr (TYPE_1__*,char*,int ) ;
 TYPE_1__ snmp_client ;
 int snmp_next_reqid (TYPE_1__*) ;
 int snmp_pdu_dump (struct snmp_pdu*) ;
 scalar_t__ snmp_pdu_encode (struct snmp_pdu*,struct asn_buf*) ;
 int strerror (int ) ;

__attribute__((used)) static int32_t
snmp_send_packet(struct snmp_pdu * pdu)
{
 u_char *buf;
 struct asn_buf b;
 ssize_t ret;

 if ((buf = calloc(1, snmp_client.txbuflen)) == ((void*)0)) {
  seterr(&snmp_client, "%s", strerror(errno));
  return (-1);
 }

 pdu->request_id = snmp_next_reqid(&snmp_client);

 b.asn_ptr = buf;
 b.asn_len = snmp_client.txbuflen;
 if (snmp_pdu_encode(pdu, &b)) {
  seterr(&snmp_client, "%s", strerror(errno));
  free(buf);
  return (-1);
 }

 if (snmp_client.dump_pdus)
  snmp_pdu_dump(pdu);

 if ((ret = send(snmp_client.fd, buf, b.asn_ptr - buf, 0)) == -1) {
  seterr(&snmp_client, "%s", strerror(errno));
  free(buf);
  return (-1);
 }
 free(buf);

 return (pdu->request_id);
}
