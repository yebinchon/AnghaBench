
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_client {int dummy; } ;


 int SNMP_COMMUNITY_MAXLEN ;
 int seterr (struct snmp_client*,char*,int,char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static inline const char *
get_comm(struct snmp_client *sc, const char **strp)
{
 const char *p = strrchr(*strp, '@');

 if (p == ((void*)0))

  return (*strp);

 if (p - *strp > SNMP_COMMUNITY_MAXLEN) {
  seterr(sc, "community string too long '%.*s'",
      p - *strp, *strp);
  return (((void*)0));
 }

 *strp = p + 1;
 return (p);
}
