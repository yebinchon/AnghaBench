
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_client {int dummy; } ;


 int seterr (struct snmp_client*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline const char *
get_port(struct snmp_client *sc, const char **strp)
{
 if (**strp != ':')
  return (*strp + 1);

 if ((*strp)[1] == '\0') {
  seterr(sc, "empty port name");
  return (((void*)0));
 }

 *strp += strlen(*strp);
 return (*strp);
}
