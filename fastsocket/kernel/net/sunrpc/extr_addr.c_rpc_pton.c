
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 size_t rpc_pton4 (char const*,size_t const,struct sockaddr*,size_t const) ;
 size_t rpc_pton6 (char const*,size_t const,struct sockaddr*,size_t const) ;

size_t rpc_pton(const char *buf, const size_t buflen,
  struct sockaddr *sap, const size_t salen)
{
 unsigned int i;

 for (i = 0; i < buflen; i++)
  if (buf[i] == ':')
   return rpc_pton6(buf, buflen, sap, salen);
 return rpc_pton4(buf, buflen, sap, salen);
}
