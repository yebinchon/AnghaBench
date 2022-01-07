
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int socklen_t ;
typedef int SOCKET ;
typedef int SOCKADDR_STORAGE ;




 int FIONBIO ;
 int F_SETFL ;
 int INET6_ADDRSTRLEN ;
 int INVALID_SOCKET ;
 int O_NONBLOCK ;
 int accept (int,struct sockaddr*,int*) ;
 int fcntl (int,int ,int ) ;
 int fprintf (int ,char*,char const*) ;
 char* inet_ntop (int const,int *,char*,int) ;
 int ioctlsocket (int,int ,int*) ;
 int perror (char*) ;
 int sprintf (char*,char*,unsigned long) ;
 int stderr ;

__attribute__((used)) static SOCKET
accept_client(SOCKET server_fd, int verbose, int nonblock)
{
 int fd;
 SOCKADDR_STORAGE sa;
 socklen_t sa_len;

 sa_len = sizeof sa;
 fd = accept(server_fd, (struct sockaddr *)&sa, &sa_len);
 if (fd == INVALID_SOCKET) {
  if (verbose) {
   perror("accept()");
  }
  return INVALID_SOCKET;
 }
 if (verbose) {
  char tmp[INET6_ADDRSTRLEN + 50];
  const char *name;

  name = ((void*)0);
  switch (((struct sockaddr *)&sa)->sa_family) {
  case 129:
   name = inet_ntop(129,
    &((struct sockaddr_in *)&sa)->sin_addr,
    tmp, sizeof tmp);
   break;
  case 128:
   name = inet_ntop(128,
    &((struct sockaddr_in6 *)&sa)->sin6_addr,
    tmp, sizeof tmp);
   break;
  }
  if (name == ((void*)0)) {
   sprintf(tmp, "<unknown: %lu>", (unsigned long)
    ((struct sockaddr *)&sa)->sa_family);
   name = tmp;
  }
  fprintf(stderr, "accepting connection from: %s\n", name);
 }





 if (nonblock) {






  fcntl(fd, F_SETFL, O_NONBLOCK);

 }
 return fd;
}
