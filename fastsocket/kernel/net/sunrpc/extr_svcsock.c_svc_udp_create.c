
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int dummy; } ;
struct svc_serv {int dummy; } ;
struct sockaddr {int dummy; } ;
struct net {int dummy; } ;


 int IPPROTO_UDP ;
 struct svc_xprt* svc_create_socket (struct svc_serv*,int ,struct net*,struct sockaddr*,int,int) ;

__attribute__((used)) static struct svc_xprt *svc_udp_create(struct svc_serv *serv,
           struct net *net,
           struct sockaddr *sa, int salen,
           int flags)
{
 return svc_create_socket(serv, IPPROTO_UDP, net, sa, salen, flags);
}
