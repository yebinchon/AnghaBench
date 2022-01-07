
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_client {int dummy; } ;
struct in_addr {int dummy; } ;


 int INET_ADDRSTRLEN ;
 int inet_aton (char*,struct in_addr*) ;
 scalar_t__ isascii (char const) ;
 scalar_t__ isdigit (char const) ;
 int seterr (struct snmp_client*,char*,...) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static inline const char *
get_ipv4(struct snmp_client *sc, const char **strp)
{
 const char *p = *strp;

 while (isascii(*p) && (isdigit(*p) || *p == '.'))
  p++;

 if (p - *strp > INET_ADDRSTRLEN) {
  seterr(sc, "IPv4 address too long '%.*s'", p - *strp, *strp);
  return (((void*)0));
 }
 if (*strp == p)
  return *strp;

 char str[INET_ADDRSTRLEN + 1];
 strncpy(str, *strp, p - *strp);
 str[p - *strp] = '\0';

 struct in_addr addr;
 if (inet_aton(str, &addr) != 1) {
  seterr(sc, "illegal IPv4 address '%s'", str);
  return (((void*)0));
 }

 *strp = p;
 return (p);
}
