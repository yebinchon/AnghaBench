
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct snmp_pdu {scalar_t__ version; int type; int error_index; int error_status; } ;
struct asn_buf {size_t asn_len; int * asn_ptr; int const* asn_cptr; } ;
typedef int int32_t ;
typedef enum snmpd_input_err { ____Placeholder_snmpd_input_err } snmpd_input_err ;
typedef enum snmp_ret { ____Placeholder_snmp_ret } snmp_ret ;
struct TYPE_6__ {scalar_t__ dump_pdus; } ;
struct TYPE_5__ {size_t txbuf; } ;
struct TYPE_4__ {int silentDrops; } ;


 int LOG_WARNING ;
 int SNMPD_INPUT_FAILED ;
 int SNMPD_INPUT_OK ;
 int SNMPD_INPUT_VALBADLEN ;
 int SNMPD_INPUT_VALRANGE ;
 int SNMP_ERR_BADVALUE ;
 int SNMP_ERR_WRONG_ENCODING ;
 int SNMP_ERR_WRONG_LENGTH ;
 int SNMP_ERR_WRONG_VALUE ;







 scalar_t__ SNMP_V1 ;
 int abort () ;
 TYPE_3__ debug ;
 int snmp_get (struct snmp_pdu*,struct asn_buf*,struct snmp_pdu*,void*) ;
 int snmp_getbulk (struct snmp_pdu*,struct asn_buf*,struct snmp_pdu*,void*) ;
 int snmp_getnext (struct snmp_pdu*,struct asn_buf*,struct snmp_pdu*,void*) ;
 scalar_t__ const snmp_make_errresp (struct snmp_pdu*,struct asn_buf*,struct asn_buf*) ;
 int snmp_pdu_dump (struct snmp_pdu*) ;
 int snmp_pdu_free (struct snmp_pdu*) ;
 int snmp_printf (char*,char const*) ;
 int snmp_set (struct snmp_pdu*,struct asn_buf*,struct snmp_pdu*,void*) ;
 TYPE_2__ snmpd ;
 TYPE_1__ snmpd_stats ;
 int syslog (int ,char*) ;

enum snmpd_input_err
snmp_input_finish(struct snmp_pdu *pdu, const u_char *rcvbuf, size_t rcvlen,
    u_char *sndbuf, size_t *sndlen, const char *source,
    enum snmpd_input_err ierr, int32_t ivar, void *data)
{
 struct snmp_pdu resp;
 struct asn_buf resp_b, pdu_b;
 enum snmp_ret ret;

 resp_b.asn_ptr = sndbuf;
 resp_b.asn_len = snmpd.txbuf;

 pdu_b.asn_cptr = rcvbuf;
 pdu_b.asn_len = rcvlen;

 if (ierr != SNMPD_INPUT_OK) {

  if (pdu->version == SNMP_V1)
   pdu->error_status = SNMP_ERR_BADVALUE;
  else if (ierr == SNMPD_INPUT_VALBADLEN)
   pdu->error_status = SNMP_ERR_WRONG_LENGTH;
  else if (ierr == SNMPD_INPUT_VALRANGE)
   pdu->error_status = SNMP_ERR_WRONG_VALUE;
  else
   pdu->error_status = SNMP_ERR_WRONG_ENCODING;

  pdu->error_index = ivar;

  if (snmp_make_errresp(pdu, &pdu_b, &resp_b) == 129) {
   syslog(LOG_WARNING, "could not encode error response");
   snmpd_stats.silentDrops++;
   return (SNMPD_INPUT_FAILED);
  }

  if (debug.dump_pdus) {
   snmp_printf("%s <- ", source);
   snmp_pdu_dump(pdu);
  }
  *sndlen = (size_t)(resp_b.asn_ptr - sndbuf);
  return (SNMPD_INPUT_OK);
 }

 switch (pdu->type) {

   case 134:
  ret = snmp_get(pdu, &resp_b, &resp, data);
  break;

   case 132:
  ret = snmp_getnext(pdu, &resp_b, &resp, data);
  break;

   case 131:
  ret = snmp_set(pdu, &resp_b, &resp, data);
  break;

   case 133:
  ret = snmp_getbulk(pdu, &resp_b, &resp, data);
  break;

   default:
  ret = 129;
  break;
 }

 switch (ret) {

   case 128:

  if (debug.dump_pdus) {
   snmp_printf("%s <- ", source);
   snmp_pdu_dump(&resp);
  }
  *sndlen = (size_t)(resp_b.asn_ptr - sndbuf);
  snmp_pdu_free(&resp);
  return (SNMPD_INPUT_OK);

   case 129:

  snmpd_stats.silentDrops++;
  return (SNMPD_INPUT_FAILED);

   case 130:


  resp_b.asn_ptr = sndbuf;
  resp_b.asn_len = snmpd.txbuf;
  if (snmp_make_errresp(pdu, &pdu_b, &resp_b) == 129) {
   syslog(LOG_WARNING, "could not encode error response");
   snmpd_stats.silentDrops++;
   return (SNMPD_INPUT_FAILED);
  } else {
   if (debug.dump_pdus) {
    snmp_printf("%s <- ", source);
    snmp_pdu_dump(pdu);
   }
   *sndlen = (size_t)(resp_b.asn_ptr - sndbuf);
   return (SNMPD_INPUT_OK);
  }
 }
 abort();
}
