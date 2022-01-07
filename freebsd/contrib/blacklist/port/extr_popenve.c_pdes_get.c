
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;


 int AF_LOCAL ;
 int FD_CLOEXEC ;
 int F_GETFL ;
 int F_SETFD ;
 int F_SETFL ;
 int O_CLOEXEC ;
 int SOCK_CLOEXEC ;
 int SOCK_STREAM ;
 int close (int) ;
 int errno ;
 int fcntl (int,int ,...) ;
 struct pid* malloc (int) ;
 int pipe (int*) ;
 int pipe2 (int*,int) ;
 scalar_t__ socketpair (int ,int,int ,int*) ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strrchr (char const*,char) ;

__attribute__((used)) static struct pid *
pdes_get(int *pdes, const char **type)
{
 struct pid *cur;
 int flags = strchr(*type, 'e') ? O_CLOEXEC : 0;
 int serrno;

 if (strchr(*type, '+')) {



  int stype = flags ? (SOCK_STREAM | 0) : SOCK_STREAM;
  *type = "r+";
  if (socketpair(AF_LOCAL, stype, 0, pdes) < 0)
   return ((void*)0);

  fcntl(pdes[0], F_SETFD, FD_CLOEXEC);
  fcntl(pdes[1], F_SETFD, FD_CLOEXEC);

 } else {
  *type = strrchr(*type, 'r') ? "r" : "w";




  if (pipe(pdes) == -1)
   return ((void*)0);
  fcntl(pdes[0], F_SETFL, fcntl(pdes[0], F_GETFL) | flags);
  fcntl(pdes[1], F_SETFL, fcntl(pdes[1], F_GETFL) | flags);

 }

 if ((cur = malloc(sizeof(*cur))) != ((void*)0))
  return cur;
 serrno = errno;
 (void)close(pdes[0]);
 (void)close(pdes[1]);
 errno = serrno;
 return ((void*)0);
}
