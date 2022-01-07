
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int * octets; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {scalar_t__ syntax; TYPE_2__ v; int var; } ;


 scalar_t__ SNMP_SYNTAX_OCTETSTRING ;
 int * malloc (int ) ;
 int memcpy (int *,int *,int ) ;

int
snmp_value_copy(struct snmp_value *to, const struct snmp_value *from)
{
 to->var = from->var;
 to->syntax = from->syntax;

 if (from->syntax == SNMP_SYNTAX_OCTETSTRING) {
  if ((to->v.octetstring.len = from->v.octetstring.len) == 0)
   to->v.octetstring.octets = ((void*)0);
  else {
   to->v.octetstring.octets = malloc(to->v.octetstring.len);
   if (to->v.octetstring.octets == ((void*)0))
    return (-1);
   (void)memcpy(to->v.octetstring.octets,
       from->v.octetstring.octets, to->v.octetstring.len);
  }
 } else
  to->v = from->v;
 return (0);
}
