
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int hints ;


 int AF_LOCAL ;
 int EINVAL ;
 int O_ACCMODE ;


 int PATH_MAX ;
 int SHUT_RD ;
 int SHUT_WR ;
 int bzero (struct addrinfo*,int) ;
 int close (int) ;
 int connect (int,int ,int ) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int * realpath (char const*,char*) ;
 int shutdown (int,int ) ;
 int socket (int ,int ,int ) ;
 int warn (char*,...) ;

__attribute__((used)) static int
udom_open(const char *path, int flags)
{
 struct addrinfo hints, *res, *res0;
 char rpath[PATH_MAX];
 int fd = -1;
 int error;




 bzero(&hints, sizeof(hints));
 hints.ai_family = AF_LOCAL;
 if (realpath(path, rpath) == ((void*)0))
  return (-1);
 error = getaddrinfo(rpath, ((void*)0), &hints, &res0);
 if (error) {
  warn("%s", gai_strerror(error));
  errno = EINVAL;
  return (-1);
 }
 for (res = res0; res != ((void*)0); res = res->ai_next) {
  fd = socket(res->ai_family, res->ai_socktype,
      res->ai_protocol);
  if (fd < 0) {
   freeaddrinfo(res0);
   return (-1);
  }
  error = connect(fd, res->ai_addr, res->ai_addrlen);
  if (error == 0)
   break;
  else {
   close(fd);
   fd = -1;
  }
 }
 freeaddrinfo(res0);




 if (fd >= 0) {
  switch(flags & O_ACCMODE) {
  case 129:
   if (shutdown(fd, SHUT_WR) == -1)
    warn(((void*)0));
   break;
  case 128:
   if (shutdown(fd, SHUT_RD) == -1)
    warn(((void*)0));
   break;
  default:
   break;
  }
 }
 return (fd);
}
