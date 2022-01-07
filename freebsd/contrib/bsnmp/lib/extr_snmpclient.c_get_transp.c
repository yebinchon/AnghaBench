
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_client {int dummy; } ;


 int SNMP_TRANS_UDP ;
 size_t nitems (char**) ;
 int seterr (struct snmp_client*,char*) ;
 int strlen (char*) ;
 char* strstr (char const*,char*) ;
 char** trans_list ;

__attribute__((used)) static inline int
get_transp(struct snmp_client *sc, const char **strp)
{
 const char *p;
 size_t i;

 for (i = 0; i < nitems(trans_list); i++) {
  if (trans_list[i] == ((void*)0) || *trans_list[i] == '\0')
   continue;
  p = strstr(*strp, trans_list[i]);
  if (p == *strp) {
   *strp += strlen(trans_list[i]);
   return ((int)i);
  }
 }

 p = *strp;
 if (p[0] == ':' && p[1] == ':') {
  seterr(sc, "empty transport specifier");
  return (-1);
 }

 return (SNMP_TRANS_UDP);
}
