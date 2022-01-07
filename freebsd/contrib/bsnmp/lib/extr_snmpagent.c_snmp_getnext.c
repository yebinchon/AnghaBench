
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct snmp_pdu {size_t nbindings; size_t error_index; int error_status; int * bindings; } ;
struct TYPE_2__ {void* data; } ;
struct context {TYPE_1__ ctx; } ;
struct asn_buf {int dummy; } ;
typedef enum snmp_ret { ____Placeholder_snmp_ret } snmp_ret ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef int context ;


 int ASN_ERR_EOBUF ;
 int ASN_ERR_OK ;
 int GET ;
 scalar_t__ SNMP_CODE_OK ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_TOOBIG ;
 int SNMP_RET_ERR ;
 int SNMP_RET_IGN ;
 int SNMP_RET_OK ;
 scalar_t__ TR (int ) ;
 int do_getnext (struct context*,int *,int *,struct snmp_pdu*) ;
 int memset (struct context*,int ,int) ;
 int snmp_binding_encode (struct asn_buf*,int *) ;
 int snmp_debug (char*,...) ;
 scalar_t__ snmp_fix_encoding (struct asn_buf*,struct snmp_pdu*) ;
 int snmp_pdu_create_response (struct snmp_pdu*,struct snmp_pdu*) ;
 scalar_t__ snmp_pdu_encode_header (struct asn_buf*,struct snmp_pdu*) ;
 int snmp_pdu_free (struct snmp_pdu*) ;

enum snmp_ret
snmp_getnext(struct snmp_pdu *pdu, struct asn_buf *resp_b,
    struct snmp_pdu *resp, void *data)
{
 struct context context;
 u_int i;
 enum asn_err err;
 enum snmp_ret result;

 memset(&context, 0, sizeof(context));
 context.ctx.data = data;

 snmp_pdu_create_response(pdu, resp);

 if (snmp_pdu_encode_header(resp_b, resp))
  return (SNMP_RET_IGN);

 for (i = 0; i < pdu->nbindings; i++) {
  result = do_getnext(&context, &pdu->bindings[i],
      &resp->bindings[i], pdu);

  if (result != SNMP_RET_OK) {
   pdu->error_index = i + 1;
   snmp_pdu_free(resp);
   return (result);
  }

  resp->nbindings++;

  err = snmp_binding_encode(resp_b, &resp->bindings[i]);

  if (err == ASN_ERR_EOBUF) {
   pdu->error_status = SNMP_ERR_TOOBIG;
   pdu->error_index = 0;
   snmp_pdu_free(resp);
   return (SNMP_RET_ERR);
  }
  if (err != ASN_ERR_OK) {
   if (TR(GET))
    snmp_debug("getnext: binding encoding: %u", err);
   pdu->error_status = SNMP_ERR_GENERR;
   pdu->error_index = i + 1;
   snmp_pdu_free(resp);
   return (SNMP_RET_ERR);
  }
 }

 if (snmp_fix_encoding(resp_b, resp) != SNMP_CODE_OK) {
  snmp_debug("getnext: failed to encode PDU");
  return (SNMP_RET_ERR);
 }

 return (SNMP_RET_OK);
}
