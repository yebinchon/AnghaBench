
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;


 int AF_INET ;
 int ENOPROTOOPT ;
 int EPROTONOSUPPORT ;
 int INADDR_ANY ;


 char* RPCBIND_NETID_TCP ;
 char* RPCBIND_NETID_UDP ;
 int htonl (int ) ;
 int htons (unsigned short const) ;
 int rpcb_register (int const,int const,unsigned short const,unsigned short const) ;
 int rpcb_v4_register (int const,int const,struct sockaddr const*,char const*) ;

__attribute__((used)) static int __svc_rpcb_register4(const u32 program, const u32 version,
    const unsigned short protocol,
    const unsigned short port)
{
 const struct sockaddr_in sin = {
  .sin_family = AF_INET,
  .sin_addr.s_addr = htonl(INADDR_ANY),
  .sin_port = htons(port),
 };
 const char *netid;
 int error;

 switch (protocol) {
 case 128:
  netid = RPCBIND_NETID_UDP;
  break;
 case 129:
  netid = RPCBIND_NETID_TCP;
  break;
 default:
  return -ENOPROTOOPT;
 }

 error = rpcb_v4_register(program, version,
     (const struct sockaddr *)&sin, netid);





 if (error == -EPROTONOSUPPORT)
  error = rpcb_register(program, version, protocol, port);

 return error;
}
