
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct snmp_pdu {int dummy; } ;
struct asn_buf {int * asn_ptr; int asn_len; } ;
typedef enum snmp_code { ____Placeholder_snmp_code } snmp_code ;
struct TYPE_4__ {scalar_t__ dump_pdus; } ;
struct TYPE_3__ {int txbuf; } ;


 int LOG_ERR ;
 int SNMP_CODE_OK ;
 int abort () ;
 TYPE_2__ debug ;
 int snmp_pdu_dump (struct snmp_pdu*) ;
 int snmp_pdu_encode (struct snmp_pdu*,struct asn_buf*) ;
 int snmp_printf (char*,char const*) ;
 TYPE_1__ snmpd ;
 int syslog (int ,char*,int) ;

void
snmp_output(struct snmp_pdu *pdu, u_char *sndbuf, size_t *sndlen,
    const char *dest)
{
 struct asn_buf resp_b;
 enum snmp_code code;

 resp_b.asn_ptr = sndbuf;
 resp_b.asn_len = snmpd.txbuf;

 if ((code = snmp_pdu_encode(pdu, &resp_b)) != SNMP_CODE_OK) {
  syslog(LOG_ERR, "cannot encode message (code=%d)", code);
  abort();
 }
 if (debug.dump_pdus) {
  snmp_printf("%s <- ", dest);
  snmp_pdu_dump(pdu);
 }
 *sndlen = (size_t)(resp_b.asn_ptr - sndbuf);
}
