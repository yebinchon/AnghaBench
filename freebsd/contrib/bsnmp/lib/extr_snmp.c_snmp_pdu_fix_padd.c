
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ priv_proto; } ;
struct snmp_pdu {int scoped_len; TYPE_1__ user; } ;
struct asn_buf {int dummy; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef int asn_len_t ;


 int ASN_ERR_FAILED ;
 scalar_t__ ASN_ERR_OK ;
 scalar_t__ SNMP_PRIV_DES ;
 scalar_t__ asn_pad (struct asn_buf*,int) ;

__attribute__((used)) static enum asn_err
snmp_pdu_fix_padd(struct asn_buf *b, struct snmp_pdu *pdu)
{
 asn_len_t padlen;

 if (pdu->user.priv_proto == SNMP_PRIV_DES && pdu->scoped_len % 8 != 0) {
  padlen = 8 - (pdu->scoped_len % 8);
  if (asn_pad(b, padlen) != ASN_ERR_OK)
   return (ASN_ERR_FAILED);
  pdu->scoped_len += padlen;
 }

 return (ASN_ERR_OK);
}
