
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;




 size_t rpc_ntop4 (struct sockaddr const*,char*,size_t const) ;
 size_t rpc_ntop6 (struct sockaddr const*,char*,size_t const) ;

size_t rpc_ntop(const struct sockaddr *sap, char *buf, const size_t buflen)
{
 switch (sap->sa_family) {
 case 129:
  return rpc_ntop4(sap, buf, buflen);
 case 128:
  return rpc_ntop6(sap, buf, buflen);
 }

 return 0;
}
