
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;


 int SOCK_DGRAM ;
 int accept (int,void*,int*) ;
 int close (int) ;
 int err (int,char*) ;
 int fork () ;
 int process_tcp (int) ;
 int process_udp (int) ;

__attribute__((used)) static void
handle(int type, int sfd)
{
 struct sockaddr_storage ss;
 socklen_t alen = sizeof(ss);
 int afd;

 if (type != SOCK_DGRAM) {
  if ((afd = accept(sfd, (void *)&ss, &alen)) == -1)
   err(1, "accept");
 } else
  afd = sfd;


 switch (fork()) {
 case -1:
  err(1, "fork");
 case 0:
  if (type == SOCK_DGRAM)
   process_udp(afd);
  else
   process_tcp(afd);
  break;
 default:
  close(afd);
  break;
 }
}
