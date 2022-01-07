
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int engine_boots; } ;
struct TYPE_4__ {scalar_t__ auth_proto; int priv_proto; } ;
struct snmp_pdu {int flags; int msg_salt; TYPE_1__ engine; TYPE_2__ user; } ;
typedef int int32_t ;


 scalar_t__ SNMP_AUTH_NOAUTH ;
 int SNMP_MSG_AUTH_FLAG ;
 int SNMP_MSG_PRIV_FLAG ;


 int memcpy (int ,int *,int) ;
 int random () ;

void
snmp_pdu_init_secparams(struct snmp_pdu *pdu)
{
 int32_t rval;

 if (pdu->user.auth_proto != SNMP_AUTH_NOAUTH)
  pdu->flags |= SNMP_MSG_AUTH_FLAG;

 switch (pdu->user.priv_proto) {
 case 128:
  memcpy(pdu->msg_salt, &pdu->engine.engine_boots,
      sizeof(pdu->engine.engine_boots));
  rval = random();
  memcpy(pdu->msg_salt + sizeof(pdu->engine.engine_boots), &rval,
      sizeof(int32_t));
  pdu->flags |= SNMP_MSG_PRIV_FLAG;
  break;
 case 129:
  rval = random();
  memcpy(pdu->msg_salt, &rval, sizeof(int32_t));
  rval = random();
  memcpy(pdu->msg_salt + sizeof(int32_t), &rval, sizeof(int32_t));
  pdu->flags |= SNMP_MSG_PRIV_FLAG;
  break;
 default:
  break;
 }
}
