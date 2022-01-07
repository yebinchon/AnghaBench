
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * octets; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {scalar_t__ syntax; TYPE_2__ v; } ;


 scalar_t__ SNMP_SYNTAX_NULL ;
 scalar_t__ SNMP_SYNTAX_OCTETSTRING ;
 int free (int *) ;

void
snmp_value_free(struct snmp_value *value)
{

 if (value->syntax == SNMP_SYNTAX_OCTETSTRING) {
  free(value->v.octetstring.octets);
  value->v.octetstring.octets = ((void*)0);
 }
 value->syntax = SNMP_SYNTAX_NULL;
}
