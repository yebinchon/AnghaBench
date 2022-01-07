
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_pdu {scalar_t__ type; int error_index; int error_status; int request_id; int time_stamp; int specific_trap; int generic_trap; int agent_addr; int enterprise; } ;
struct asn_buf {int dummy; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef int asn_len_t ;


 int ASN_ERR_FAILED ;
 scalar_t__ ASN_ERR_OK ;
 scalar_t__ SNMP_PDU_TRAP ;
 scalar_t__ asn_get_integer (struct asn_buf*,int *) ;
 scalar_t__ asn_get_ipaddress (struct asn_buf*,int ) ;
 scalar_t__ asn_get_objid (struct asn_buf*,int *) ;
 scalar_t__ asn_get_sequence (struct asn_buf*,int *) ;
 scalar_t__ asn_get_timeticks (struct asn_buf*,int *) ;
 int snmp_error (char*) ;

enum asn_err
snmp_parse_pdus_hdr(struct asn_buf *b, struct snmp_pdu *pdu, asn_len_t *lenp)
{
 if (pdu->type == SNMP_PDU_TRAP) {
  if (asn_get_objid(b, &pdu->enterprise) != ASN_ERR_OK) {
   snmp_error("cannot parse trap enterprise");
   return (ASN_ERR_FAILED);
  }
  if (asn_get_ipaddress(b, pdu->agent_addr) != ASN_ERR_OK) {
   snmp_error("cannot parse trap agent address");
   return (ASN_ERR_FAILED);
  }
  if (asn_get_integer(b, &pdu->generic_trap) != ASN_ERR_OK) {
   snmp_error("cannot parse 'generic-trap'");
   return (ASN_ERR_FAILED);
  }
  if (asn_get_integer(b, &pdu->specific_trap) != ASN_ERR_OK) {
   snmp_error("cannot parse 'specific-trap'");
   return (ASN_ERR_FAILED);
  }
  if (asn_get_timeticks(b, &pdu->time_stamp) != ASN_ERR_OK) {
   snmp_error("cannot parse trap 'time-stamp'");
   return (ASN_ERR_FAILED);
  }
 } else {
  if (asn_get_integer(b, &pdu->request_id) != ASN_ERR_OK) {
   snmp_error("cannot parse 'request-id'");
   return (ASN_ERR_FAILED);
  }
  if (asn_get_integer(b, &pdu->error_status) != ASN_ERR_OK) {
   snmp_error("cannot parse 'error_status'");
   return (ASN_ERR_FAILED);
  }
  if (asn_get_integer(b, &pdu->error_index) != ASN_ERR_OK) {
   snmp_error("cannot parse 'error_index'");
   return (ASN_ERR_FAILED);
  }
 }

 if (asn_get_sequence(b, lenp) != ASN_ERR_OK) {
  snmp_error("cannot get varlist header");
  return (ASN_ERR_FAILED);
 }

 return (ASN_ERR_OK);
}
