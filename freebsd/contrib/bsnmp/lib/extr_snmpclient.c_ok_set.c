
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct snmp_pdu {scalar_t__ version; scalar_t__ error_status; scalar_t__ nbindings; TYPE_1__* bindings; } ;
struct TYPE_2__ {scalar_t__ syntax; int var; } ;


 scalar_t__ SNMP_ERR_NOERROR ;
 scalar_t__ SNMP_ERR_NOSUCHNAME ;
 scalar_t__ asn_compare_oid (int *,int *) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
ok_set(const struct snmp_pdu * req, const struct snmp_pdu * resp)
{
 u_int i;

 if (resp->version != req->version) {
  warnx("SNMP SET: response has wrong version");
  return (-1);
 }

 if (resp->error_status == SNMP_ERR_NOSUCHNAME) {
  warnx("SNMP SET: error %d", resp->error_status);
  return (0);
 }
 if (resp->error_status != SNMP_ERR_NOERROR) {
  warnx("SNMP SET: error %d", resp->error_status);
  return (-1);
 }

 if (resp->nbindings != req->nbindings) {
  warnx("SNMP SET: bad number of bindings in response");
  return (-1);
 }
 for (i = 0; i < req->nbindings; i++) {
  if (asn_compare_oid(&req->bindings[i].var,
      &resp->bindings[i].var) != 0) {
   warnx("SNMP SET: wrong OID in response to SET");
   return (-1);
  }
  if (resp->bindings[i].syntax != req->bindings[i].syntax) {
   warnx("SNMP SET: bad syntax in response");
   return (-1);
  }
 }
 return (1);
}
