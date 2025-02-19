
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int engine_boots; int engine_time; int max_msg_size; int* engine_id; int engine_len; } ;


 int KERN_HOSTID ;
 int OID_freeBSD ;
 int SNMP_ENGINE_ID_SIZ ;
 char* act_getkernint (int ) ;
 int free (char*) ;
 int memcpy (int*,char*,int) ;
 TYPE_1__ snmpd_engine ;
 int strlen (char*) ;

int
init_snmpd_engine(void)
{
 char *hostid;

 snmpd_engine.engine_boots = 1;
 snmpd_engine.engine_time = 1;
 snmpd_engine.max_msg_size = 1500;

 snmpd_engine.engine_id[0] = ((OID_freeBSD & 0xff000000) >> 24) | 0x80;
 snmpd_engine.engine_id[1] = (OID_freeBSD & 0xff0000) >> 16;
 snmpd_engine.engine_id[2] = (OID_freeBSD & 0xff00) >> 8;
 snmpd_engine.engine_id[3] = OID_freeBSD & 0xff;
 snmpd_engine.engine_id[4] = 128;
 snmpd_engine.engine_len = 5;

 if ((hostid = act_getkernint(KERN_HOSTID)) == ((void*)0))
  return (-1);

 if (strlen(hostid) > SNMP_ENGINE_ID_SIZ - snmpd_engine.engine_len) {
  memcpy(snmpd_engine.engine_id + snmpd_engine.engine_len,
      hostid, SNMP_ENGINE_ID_SIZ - snmpd_engine.engine_len);
  snmpd_engine.engine_len = SNMP_ENGINE_ID_SIZ;
 } else {
  memcpy(snmpd_engine.engine_id + snmpd_engine.engine_len,
      hostid, strlen(hostid));
  snmpd_engine.engine_len += strlen(hostid);
 }

 free(hostid);

 return (0);
}
