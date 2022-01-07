
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct snmp_pdu {scalar_t__ version; scalar_t__ error_status; scalar_t__ nbindings; TYPE_1__* bindings; } ;
struct TYPE_4__ {scalar_t__ version; } ;
struct TYPE_3__ {scalar_t__ syntax; int var; } ;


 scalar_t__ SNMP_ERR_NOERROR ;
 scalar_t__ SNMP_ERR_NOSUCHNAME ;
 scalar_t__ SNMP_SYNTAX_NOSUCHINSTANCE ;
 scalar_t__ SNMP_SYNTAX_NOSUCHOBJECT ;
 scalar_t__ SNMP_V1 ;
 scalar_t__ asn_compare_oid (int *,int *) ;
 TYPE_2__ snmp_client ;
 int warnx (char*,...) ;

__attribute__((used)) static int
ok_get(const struct snmp_pdu * req, const struct snmp_pdu * resp)
{
 u_int i;

 if (resp->version != req->version) {
  warnx("SNMP GET: response has wrong version");
  return (-1);
 }

 if (resp->error_status == SNMP_ERR_NOSUCHNAME)
  return (0);

 if (resp->error_status != SNMP_ERR_NOERROR) {
  warnx("SNMP GET: error %d", resp->error_status);
  return (-1);
 }

 if (resp->nbindings != req->nbindings) {
  warnx("SNMP GET: bad number of bindings in response");
  return (-1);
 }
 for (i = 0; i < req->nbindings; i++) {
  if (asn_compare_oid(&req->bindings[i].var,
      &resp->bindings[i].var) != 0) {
   warnx("SNMP GET: bad OID in response");
   return (-1);
  }
  if (snmp_client.version != SNMP_V1 &&
      (resp->bindings[i].syntax == SNMP_SYNTAX_NOSUCHOBJECT ||
      resp->bindings[i].syntax == SNMP_SYNTAX_NOSUCHINSTANCE))
   return (0);
  if (resp->bindings[i].syntax != req->bindings[i].syntax) {
   warnx("SNMP GET: bad syntax in response");
   return (-1);
  }
 }
 return (1);
}
