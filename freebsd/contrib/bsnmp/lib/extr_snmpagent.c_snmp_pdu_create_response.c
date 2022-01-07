
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_pdu {scalar_t__ version; int flags; int context_engine_len; int context_name; int * context_engine; int security_model; int identifier; int user; int engine; int request_id; int type; int community; } ;


 int SNMP_MSG_AUTODISCOVER ;
 int SNMP_PDU_REPORT ;
 int SNMP_PDU_RESPONSE ;
 scalar_t__ SNMP_V3 ;
 int memcpy (int *,int *,int) ;
 int memset (struct snmp_pdu*,int ,int) ;
 int snmp_pdu_init_secparams (struct snmp_pdu*) ;
 int strcpy (int ,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
snmp_pdu_create_response(const struct snmp_pdu *pdu, struct snmp_pdu *resp)
{
 memset(resp, 0, sizeof(*resp));
 strcpy(resp->community, pdu->community);
 resp->version = pdu->version;
 if (pdu->flags & SNMP_MSG_AUTODISCOVER)
  resp->type = SNMP_PDU_REPORT;
 else
  resp->type = SNMP_PDU_RESPONSE;
 resp->request_id = pdu->request_id;
 resp->version = pdu->version;

 if (resp->version != SNMP_V3)
  return;

 memcpy(&resp->engine, &pdu->engine, sizeof(pdu->engine));
 memcpy(&resp->user, &pdu->user, sizeof(pdu->user));
 snmp_pdu_init_secparams(resp);
 resp->identifier = pdu->identifier;
 resp->security_model = pdu->security_model;
 resp->context_engine_len = pdu->context_engine_len;
 memcpy(resp->context_engine, pdu->context_engine,
     resp->context_engine_len);
 strlcpy(resp->context_name, pdu->context_name,
     sizeof(resp->context_name));
}
