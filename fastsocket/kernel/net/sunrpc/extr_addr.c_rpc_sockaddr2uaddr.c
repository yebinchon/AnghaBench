
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef int portbuf ;
typedef int addrbuf ;




 int GFP_KERNEL ;
 int RPCBIND_MAXUADDRLEN ;
 int RPCBIND_MAXUADDRPLEN ;
 char* kstrdup (char*,int ) ;
 unsigned short ntohs (int ) ;
 int rpc_ntop4 (struct sockaddr const*,char*,int) ;
 int rpc_ntop6_noscopeid (struct sockaddr const*,char*,int) ;
 int snprintf (char*,int,char*,unsigned short,unsigned short) ;
 int strlcat (char*,char*,int) ;

char *rpc_sockaddr2uaddr(const struct sockaddr *sap)
{
 char portbuf[RPCBIND_MAXUADDRPLEN];
 char addrbuf[RPCBIND_MAXUADDRLEN];
 unsigned short port;

 switch (sap->sa_family) {
 case 129:
  if (rpc_ntop4(sap, addrbuf, sizeof(addrbuf)) == 0)
   return ((void*)0);
  port = ntohs(((struct sockaddr_in *)sap)->sin_port);
  break;
 case 128:
  if (rpc_ntop6_noscopeid(sap, addrbuf, sizeof(addrbuf)) == 0)
   return ((void*)0);
  port = ntohs(((struct sockaddr_in6 *)sap)->sin6_port);
  break;
 default:
  return ((void*)0);
 }

 if (snprintf(portbuf, sizeof(portbuf),
       ".%u.%u", port >> 8, port & 0xff) > (int)sizeof(portbuf))
  return ((void*)0);

 if (strlcat(addrbuf, portbuf, sizeof(addrbuf)) > sizeof(addrbuf))
  return ((void*)0);

 return kstrdup(addrbuf, GFP_KERNEL);
}
