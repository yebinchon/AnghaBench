
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct addrinfo {size_t ai_addrlen; int ai_protocol; int ai_socktype; int ai_family; scalar_t__ ai_addr; struct addrinfo* ai_next; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int INADDR_ANY ;
 int INET6_ADDRSTRLEN ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,size_t) ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int in6addr_any ;
 int inet_ntop (int ,void*,char*,int) ;
 scalar_t__ listen (int,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int sprintf (char*,char*,int) ;
 int stderr ;

__attribute__((used)) static int
host_bind(const char *host, const char *port)
{
 struct addrinfo hints, *si, *p;
 int fd;
 int err;

 memset(&hints, 0, sizeof hints);
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;
 err = getaddrinfo(host, port, &hints, &si);
 if (err != 0) {
  fprintf(stderr, "ERROR: getaddrinfo(): %s\n",
   gai_strerror(err));
  return -1;
 }
 fd = -1;
 for (p = si; p != ((void*)0); p = p->ai_next) {
  struct sockaddr *sa;
  struct sockaddr_in sa4;
  struct sockaddr_in6 sa6;
  size_t sa_len;
  void *addr;
  char tmp[INET6_ADDRSTRLEN + 50];
  int opt;

  sa = (struct sockaddr *)p->ai_addr;
  if (sa->sa_family == AF_INET) {
   sa4 = *(struct sockaddr_in *)sa;
   sa = (struct sockaddr *)&sa4;
   sa_len = sizeof sa4;
   addr = &sa4.sin_addr;
   if (host == ((void*)0)) {
    sa4.sin_addr.s_addr = INADDR_ANY;
   }
  } else if (sa->sa_family == AF_INET6) {
   sa6 = *(struct sockaddr_in6 *)sa;
   sa = (struct sockaddr *)&sa6;
   sa_len = sizeof sa6;
   addr = &sa6.sin6_addr;
   if (host == ((void*)0)) {
    sa6.sin6_addr = in6addr_any;
   }
  } else {
   addr = ((void*)0);
   sa_len = p->ai_addrlen;
  }
  if (addr != ((void*)0)) {
   inet_ntop(p->ai_family, addr, tmp, sizeof tmp);
  } else {
   sprintf(tmp, "<unknown family: %d>",
    (int)sa->sa_family);
  }
  fprintf(stderr, "binding to: %s\n", tmp);
  fd = socket(p->ai_family, p->ai_socktype, p->ai_protocol);
  if (fd < 0) {
   perror("socket()");
   continue;
  }
  opt = 1;
  setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof opt);
  opt = 0;
  setsockopt(fd, IPPROTO_IPV6, IPV6_V6ONLY, &opt, sizeof opt);
  if (bind(fd, sa, sa_len) < 0) {
   perror("bind()");
   close(fd);
   continue;
  }
  break;
 }
 if (p == ((void*)0)) {
  freeaddrinfo(si);
  fprintf(stderr, "ERROR: failed to bind\n");
  return -1;
 }
 freeaddrinfo(si);
 if (listen(fd, 5) < 0) {
  perror("listen()");
  close(fd);
  return -1;
 }
 fprintf(stderr, "bound.\n");
 return fd;
}
