
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct addrinfo {scalar_t__ ai_addr; int ai_flags; int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int hints ;


 int AF_INET ;
 int AI_PASSIVE ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int ntohl (int) ;
 int report (char*,char const*,...) ;

__attribute__((used)) static void
gethost(const char *host, u_char *ip)
{
 struct addrinfo hints, *res;
 int error;
 struct sockaddr_in *sain;

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_INET;
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_protocol = IPPROTO_UDP;
 hints.ai_flags = AI_PASSIVE;
 error = getaddrinfo(host, ((void*)0), &hints, &res);
 if (error != 0)
  report("%s: %s", host, gai_strerror(error));
 if (res == ((void*)0))
  report("%s: unknown hostname", host);

 sain = (struct sockaddr_in *)(void *)res->ai_addr;
 sain->sin_addr.s_addr = ntohl(sain->sin_addr.s_addr);
 ip[0] = sain->sin_addr.s_addr >> 24;
 ip[1] = sain->sin_addr.s_addr >> 16;
 ip[2] = sain->sin_addr.s_addr >> 8;
 ip[3] = sain->sin_addr.s_addr >> 0;

 freeaddrinfo(res);
}
