
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef char u_char ;
struct TYPE_5__ {int len; int octets; } ;
struct TYPE_6__ {TYPE_2__ octetstring; } ;
struct snmp_value {TYPE_3__ v; } ;
struct snmp_context {TYPE_1__* scratch; } ;
typedef int ssize_t ;
struct TYPE_4__ {char* ptr1; } ;


 int SNMP_ERR_BADVALUE ;
 int SNMP_ERR_RES_UNAVAIL ;
 char* malloc (int) ;
 int memcpy (char*,int ,int) ;

int
string_save(struct snmp_value *value, struct snmp_context *ctx,
    ssize_t req_size, u_char **valp)
{
 if (req_size != -1 && value->v.octetstring.len != (u_long)req_size)
  return (SNMP_ERR_BADVALUE);

 ctx->scratch->ptr1 = *valp;

 if ((*valp = malloc(value->v.octetstring.len + 1)) == ((void*)0)) {
  *valp = ctx->scratch->ptr1;
  return (SNMP_ERR_RES_UNAVAIL);
 }

 memcpy(*valp, value->v.octetstring.octets, value->v.octetstring.len);
 (*valp)[value->v.octetstring.len] = '\0';

 return (0);
}
