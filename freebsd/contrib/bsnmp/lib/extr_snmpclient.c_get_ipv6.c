
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_client {int dummy; } ;
struct addrinfo {int ai_flags; int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int hints ;


 int AF_INET6 ;
 int AI_CANONNAME ;
 int AI_NUMERICHOST ;
 int IF_NAMESIZE ;
 int INET6_ADDRSTRLEN ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int seterr (struct snmp_client*,char*,...) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static inline const char *
get_ipv6(struct snmp_client *sc, const char **strp)
{
 char str[INET6_ADDRSTRLEN + IF_NAMESIZE];
 struct addrinfo hints, *res;
 int error;

 if (**strp != '[')
  return (*strp + 1);

 const char *p = *strp + 1;
 while (*p != ']' ) {
  if (*p == '\0') {
   seterr(sc, "unterminated IPv6 address '%.*s'",
       p - *strp, *strp);
   return (((void*)0));
  }
  p++;
 }

 if (p - *strp > INET6_ADDRSTRLEN + IF_NAMESIZE) {
  seterr(sc, "IPv6 address too long '%.*s'", p - *strp, *strp);
  return (((void*)0));
 }

 strncpy(str, *strp + 1, p - (*strp + 1));
 str[p - (*strp + 1)] = '\0';

 memset(&hints, 0, sizeof(hints));
 hints.ai_flags = AI_CANONNAME | AI_NUMERICHOST;
 hints.ai_family = AF_INET6;
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_protocol = IPPROTO_UDP;
 error = getaddrinfo(str, ((void*)0), &hints, &res);
 if (error != 0) {
  seterr(sc, "%s: %s", str, gai_strerror(error));
  return (((void*)0));
 }
 freeaddrinfo(res);
 *strp = p + 1;
 return (p);
}
