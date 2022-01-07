
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_char ;
struct TYPE_4__ {int * octets; scalar_t__ len; } ;
struct TYPE_3__ {TYPE_2__ octetstring; } ;
struct snmp_value {TYPE_1__ v; } ;
typedef int ssize_t ;


 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_RES_UNAVAIL ;
 int * malloc (size_t) ;
 int memcpy (int *,int const*,size_t) ;
 int strlen (int const*) ;

int
string_get(struct snmp_value *value, const u_char *ptr, ssize_t len)
{
 if (ptr == ((void*)0)) {
  value->v.octetstring.len = 0;
  value->v.octetstring.octets = ((void*)0);
  return (SNMP_ERR_NOERROR);
 }
 if (len == -1)
  len = strlen(ptr);
 if ((value->v.octetstring.octets = malloc((size_t)len)) == ((void*)0)) {
  value->v.octetstring.len = 0;
  return (SNMP_ERR_RES_UNAVAIL);
 }
 value->v.octetstring.len = (u_long)len;
 memcpy(value->v.octetstring.octets, ptr, (size_t)len);
 return (SNMP_ERR_NOERROR);
}
