
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct addrinfo {int ai_addrlen; scalar_t__ ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int close (int) ;
 scalar_t__ connect (int,scalar_t__,int ) ;
 int fprintf (int ,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int inet_ntop (int ,void*,char*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;
 int sprintf (char*,char*,int) ;
 int stderr ;

__attribute__((used)) static int
host_connect(const char *host, const char *port)
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
  void *addr;
  char tmp[INET6_ADDRSTRLEN + 50];

  sa = (struct sockaddr *)p->ai_addr;
  if (sa->sa_family == AF_INET) {
   addr = &((struct sockaddr_in *)sa)->sin_addr;
  } else if (sa->sa_family == AF_INET6) {
   addr = &((struct sockaddr_in6 *)sa)->sin6_addr;
  } else {
   addr = ((void*)0);
  }
  if (addr != ((void*)0)) {
   inet_ntop(p->ai_family, addr, tmp, sizeof tmp);
  } else {
   sprintf(tmp, "<unknown family: %d>",
    (int)sa->sa_family);
  }
  fprintf(stderr, "connecting to: %s\n", tmp);
  fd = socket(p->ai_family, p->ai_socktype, p->ai_protocol);
  if (fd < 0) {
   perror("socket()");
   continue;
  }
  if (connect(fd, p->ai_addr, p->ai_addrlen) < 0) {
   perror("connect()");
   close(fd);
   continue;
  }
  break;
 }
 if (p == ((void*)0)) {
  freeaddrinfo(si);
  fprintf(stderr, "ERROR: failed to connect\n");
  return -1;
 }
 freeaddrinfo(si);
 fprintf(stderr, "connected.\n");
 return fd;
}
