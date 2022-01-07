
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_6__ {int max_msg_size; } ;
struct snmp_pdu {scalar_t__ version; scalar_t__ security_model; int context_engine_len; int context_name; TYPE_3__* context_engine; TYPE_3__ user; TYPE_3__ engine; scalar_t__ flags; scalar_t__ identifier; scalar_t__ nbindings; scalar_t__ error_index; scalar_t__ error_status; scalar_t__ type; int community; } ;
struct TYPE_7__ {int engine_len; struct TYPE_7__* engine_id; int max_msg_size; } ;
struct TYPE_5__ {scalar_t__ version; scalar_t__ security_model; int clen; int cname; TYPE_4__ engine; TYPE_4__* cengine; TYPE_4__ user; scalar_t__ identifier; int read_community; int write_community; } ;


 scalar_t__ SNMP_PDU_SET ;
 scalar_t__ SNMP_SECMODEL_USM ;
 scalar_t__ SNMP_V3 ;
 int memcpy (TYPE_3__*,TYPE_4__*,int) ;
 int memset (struct snmp_pdu*,int ,int) ;
 int seterr (TYPE_1__*,char*) ;
 TYPE_1__ snmp_client ;
 int snmp_pdu_init_secparams (struct snmp_pdu*) ;
 int strlcpy (int ,int ,int) ;

void
snmp_pdu_create(struct snmp_pdu *pdu, u_int op)
{
 memset(pdu, 0, sizeof(struct snmp_pdu));

 if (op == SNMP_PDU_SET)
  strlcpy(pdu->community, snmp_client.write_community,
      sizeof(pdu->community));
 else
  strlcpy(pdu->community, snmp_client.read_community,
      sizeof(pdu->community));

 pdu->type = op;
 pdu->version = snmp_client.version;
 pdu->error_status = 0;
 pdu->error_index = 0;
 pdu->nbindings = 0;

 if (snmp_client.version != SNMP_V3)
  return;

 pdu->identifier = ++snmp_client.identifier;
 pdu->engine.max_msg_size = snmp_client.engine.max_msg_size;
 pdu->flags = 0;
 pdu->security_model = snmp_client.security_model;

 if (snmp_client.security_model == SNMP_SECMODEL_USM) {
  memcpy(&pdu->engine, &snmp_client.engine, sizeof(pdu->engine));
  memcpy(&pdu->user, &snmp_client.user, sizeof(pdu->user));
  snmp_pdu_init_secparams(pdu);
 } else
  seterr(&snmp_client, "unknown security model");

 if (snmp_client.clen > 0) {
  memcpy(pdu->context_engine, snmp_client.cengine,
      snmp_client.clen);
  pdu->context_engine_len = snmp_client.clen;
 } else {
  memcpy(pdu->context_engine, snmp_client.engine.engine_id,
      snmp_client.engine.engine_len);
  pdu->context_engine_len = snmp_client.engine.engine_len;
 }

 strlcpy(pdu->context_name, snmp_client.cname,
     sizeof(pdu->context_name));
}
