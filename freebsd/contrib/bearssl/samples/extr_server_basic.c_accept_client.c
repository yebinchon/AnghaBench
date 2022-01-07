
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;




 int INET6_ADDRSTRLEN ;
 int accept (int,struct sockaddr*,int*) ;
 int fprintf (int ,char*,char const*) ;
 char* inet_ntop (int const,int *,char*,int) ;
 int perror (char*) ;
 int sprintf (char*,char*,unsigned long) ;
 int stderr ;

__attribute__((used)) static int
accept_client(int server_fd)
{
 int fd;
 struct sockaddr sa;
 socklen_t sa_len;
 char tmp[INET6_ADDRSTRLEN + 50];
 const char *name;

 sa_len = sizeof sa;
 fd = accept(server_fd, &sa, &sa_len);
 if (fd < 0) {
  perror("accept()");
  return -1;
 }
 name = ((void*)0);
 switch (sa.sa_family) {
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
  sprintf(tmp, "<unknown: %lu>", (unsigned long)sa.sa_family);
  name = tmp;
 }
 fprintf(stderr, "accepting connection from: %s\n", name);
 return fd;
}
