
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int priv_key; int auth_key; int priv_proto; int auth_proto; } ;
struct usm_user {TYPE_5__ suser; } ;
struct target_param {scalar_t__ sec_model; scalar_t__ sec_level; int secname; } ;
struct TYPE_12__ {int priv_key; int auth_key; int priv_proto; int auth_proto; int sec_name; } ;
struct TYPE_11__ {int engine_len; int engine_id; int max_msg_size; int engine_time; int engine_boots; } ;
struct snmp_pdu {int nbindings; scalar_t__ security_model; int context_engine_len; TYPE_4__ user; TYPE_3__ engine; int context_engine; TYPE_2__* bindings; int error_status; scalar_t__ error_index; int request_id; int type; int version; } ;
struct asn_oid {int dummy; } ;
struct TYPE_15__ {int len; scalar_t__* subs; } ;
struct TYPE_14__ {int engine_len; int engine_id; int max_msg_size; int engine_time; int engine_boots; } ;
struct TYPE_9__ {struct asn_oid oid; scalar_t__ uint32; } ;
struct TYPE_10__ {TYPE_1__ v; int syntax; TYPE_7__ var; } ;


 int SNMP_ERR_NOERROR ;
 int SNMP_PDU_TRAP2 ;
 scalar_t__ SNMP_SECMODEL_USM ;
 int SNMP_SYNTAX_OID ;
 int SNMP_SYNTAX_TIMETICKS ;
 int SNMP_V3 ;
 scalar_t__ SNMP_noAuthNoPriv ;
 scalar_t__ get_ticks () ;
 int memcpy (int ,int ,int) ;
 int memset (struct snmp_pdu*,int ,int) ;
 TYPE_7__ oid_snmpTrapOID ;
 TYPE_7__ oid_sysUpTime ;
 int reqid_next (int ) ;
 int snmp_pdu_init_secparams (struct snmp_pdu*) ;
 TYPE_6__ snmpd_engine ;
 scalar_t__ start_tick ;
 int strlcpy (int ,int ,int) ;
 int trap_reqid ;
 int update_snmpd_engine_time () ;
 struct usm_user* usm_find_user (int ,int,int ) ;

__attribute__((used)) static void
snmp_create_v3_trap(struct snmp_pdu *pdu, struct target_param *target,
    const struct asn_oid *trap_oid)
{
 struct usm_user *usmuser;

 memset(pdu, 0, sizeof(*pdu));

 pdu->version = SNMP_V3;
 pdu->type = SNMP_PDU_TRAP2;
 pdu->request_id = reqid_next(trap_reqid);
 pdu->error_index = 0;
 pdu->error_status = SNMP_ERR_NOERROR;

 pdu->bindings[0].var = oid_sysUpTime;
 pdu->bindings[0].var.subs[pdu->bindings[0].var.len++] = 0;
 pdu->bindings[0].syntax = SNMP_SYNTAX_TIMETICKS;
 pdu->bindings[0].v.uint32 = get_ticks() - start_tick;

 pdu->bindings[1].var = oid_snmpTrapOID;
 pdu->bindings[1].var.subs[pdu->bindings[1].var.len++] = 0;
 pdu->bindings[1].syntax = SNMP_SYNTAX_OID;
 pdu->bindings[1].v.oid = *trap_oid;

 pdu->nbindings = 2;

 update_snmpd_engine_time();

 memcpy(pdu->engine.engine_id, snmpd_engine.engine_id,
     snmpd_engine.engine_len);
 pdu->engine.engine_len = snmpd_engine.engine_len;
 pdu->engine.engine_boots = snmpd_engine.engine_boots;
 pdu->engine.engine_time = snmpd_engine.engine_time;
 pdu->engine.max_msg_size = snmpd_engine.max_msg_size;
 strlcpy(pdu->user.sec_name, target->secname,
     sizeof(pdu->user.sec_name));
 pdu->security_model = target->sec_model;

 pdu->context_engine_len = snmpd_engine.engine_len;
 memcpy(pdu->context_engine, snmpd_engine.engine_id,
     snmpd_engine.engine_len);

 if (target->sec_model == SNMP_SECMODEL_USM &&
     target->sec_level != SNMP_noAuthNoPriv) {
      usmuser = usm_find_user(pdu->engine.engine_id,
         pdu->engine.engine_len, pdu->user.sec_name);
  if (usmuser != ((void*)0)) {
   pdu->user.auth_proto = usmuser->suser.auth_proto;
   pdu->user.priv_proto = usmuser->suser.priv_proto;
   memcpy(pdu->user.auth_key, usmuser->suser.auth_key,
       sizeof(pdu->user.auth_key));
   memcpy(pdu->user.priv_key, usmuser->suser.priv_key,
       sizeof(pdu->user.priv_key));
  }
  snmp_pdu_init_secparams(pdu);
 }
}
