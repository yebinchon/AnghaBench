
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct sockaddr_storage {scalar_t__ ss_len; } ;
struct sockaddr_in6 {void* sin6_port; int sin6_family; } ;
struct sockaddr_in {int sin_family; void* sin_port; } ;
typedef int ss ;
typedef int socklen_t ;
typedef void* in_port_t ;


 int AF_INET ;
 int AF_INET6 ;
 int PF_INET ;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 int bind (int,void const*,int) ;
 int err (int,char*) ;
 void* htons (void*) ;
 int listen (int,int) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int socket (int ,int,int ) ;

__attribute__((used)) static int
cr(int af, int type, in_port_t p)
{
 int sfd;
 struct sockaddr_storage ss;
 socklen_t slen;
 sfd = socket(af == AF_INET ? PF_INET : PF_INET6, type, 0);
 if (sfd == -1)
  err(1, "socket");

 p = htons(p);
 memset(&ss, 0, sizeof(ss));
 if (af == AF_INET) {
  struct sockaddr_in *s = (void *)&ss;
  s->sin_family = AF_INET;
  slen = sizeof(*s);
  s->sin_port = p;
 } else {
  struct sockaddr_in6 *s6 = (void *)&ss;
  s6->sin6_family = AF_INET6;
  slen = sizeof(*s6);
  s6->sin6_port = p;
 }




 if (bind(sfd, (const void *)&ss, slen) == -1)
  err(1, "bind");

 if (type != SOCK_DGRAM)
  if (listen(sfd, 5) == -1)
   err(1, "listen");
 return sfd;
}
