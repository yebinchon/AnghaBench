
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int sa_family; } ;




 int RPCBIND_MAXUADDRLEN ;
 void* htons (unsigned short) ;
 int memcpy (char*,char const*,size_t const) ;
 scalar_t__ rpc_pton (char*,int ,struct sockaddr*,size_t const) ;
 scalar_t__ strict_strtoul (char*,int,unsigned long*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ unlikely (int) ;

size_t rpc_uaddr2sockaddr(const char *uaddr, const size_t uaddr_len,
     struct sockaddr *sap, const size_t salen)
{
 char *c, buf[RPCBIND_MAXUADDRLEN + sizeof('\0')];
 unsigned long portlo, porthi;
 unsigned short port;

 if (uaddr_len > RPCBIND_MAXUADDRLEN)
  return 0;

 memcpy(buf, uaddr, uaddr_len);

 buf[uaddr_len] = '\0';
 c = strrchr(buf, '.');
 if (unlikely(c == ((void*)0)))
  return 0;
 if (unlikely(strict_strtoul(c + 1, 10, &portlo) != 0))
  return 0;
 if (unlikely(portlo > 255))
  return 0;

 *c = '\0';
 c = strrchr(buf, '.');
 if (unlikely(c == ((void*)0)))
  return 0;
 if (unlikely(strict_strtoul(c + 1, 10, &porthi) != 0))
  return 0;
 if (unlikely(porthi > 255))
  return 0;

 port = (unsigned short)((porthi << 8) | portlo);

 *c = '\0';
 if (rpc_pton(buf, strlen(buf), sap, salen) == 0)
  return 0;

 switch (sap->sa_family) {
 case 129:
  ((struct sockaddr_in *)sap)->sin_port = htons(port);
  return sizeof(struct sockaddr_in);
 case 128:
  ((struct sockaddr_in6 *)sap)->sin6_port = htons(port);
  return sizeof(struct sockaddr_in6);
 }

 return 0;
}
