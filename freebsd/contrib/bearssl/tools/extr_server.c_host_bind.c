
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in6 {int sin6_addr; TYPE_1__ sin_addr; } ;
struct sockaddr_in {int sin6_addr; TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct addrinfo {size_t ai_addrlen; int ai_protocol; int ai_socktype; int ai_family; scalar_t__ ai_addr; struct addrinfo* ai_next; } ;
typedef scalar_t__ SOCKET ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int INADDR_ANY ;
 int INET6_ADDRSTRLEN ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,size_t) ;
 int close (scalar_t__) ;
 int closesocket (scalar_t__) ;
 int fprintf (int ,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int in6addr_any ;
 int inet_ntop (int ,void*,char*,int) ;
 scalar_t__ listen (scalar_t__,int) ;
 int memcpy (struct sockaddr_in6*,struct sockaddr*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char*) ;
 int setsockopt (scalar_t__,int ,int ,void*,int) ;
 scalar_t__ socket (int ,int ,int ) ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 int strcpy (char*,char*) ;

__attribute__((used)) static SOCKET
host_bind(const char *host, const char *port, int verbose)
{
 struct addrinfo hints, *si, *p;
 SOCKET fd;
 int err;

 memset(&hints, 0, sizeof hints);
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;
 err = getaddrinfo(host, port, &hints, &si);
 if (err != 0) {
  fprintf(stderr, "ERROR: getaddrinfo(): %s\n",
   gai_strerror(err));
  return INVALID_SOCKET;
 }
 fd = INVALID_SOCKET;
 for (p = si; p != ((void*)0); p = p->ai_next) {
  struct sockaddr *sa;
  struct sockaddr_in sa4;
  struct sockaddr_in6 sa6;
  size_t sa_len;
  void *addr;
  int opt;

  sa = (struct sockaddr *)p->ai_addr;
  if (sa->sa_family == AF_INET) {
   memcpy(&sa4, sa, sizeof sa4);
   sa = (struct sockaddr *)&sa4;
   sa_len = sizeof sa4;
   addr = &sa4.sin_addr;
   if (host == ((void*)0)) {
    sa4.sin_addr.s_addr = INADDR_ANY;
   }
  } else if (sa->sa_family == AF_INET6) {
   memcpy(&sa6, sa, sizeof sa6);
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
  if (verbose) {
   char tmp[INET6_ADDRSTRLEN + 50];

   if (addr != ((void*)0)) {
    if (!inet_ntop(p->ai_family, addr,
     tmp, sizeof tmp))
    {
     strcpy(tmp, "<invalid>");
    }
   } else {
    sprintf(tmp, "<unknown family: %d>",
     (int)sa->sa_family);
   }
   fprintf(stderr, "binding to: %s\n", tmp);
  }
  fd = socket(p->ai_family, p->ai_socktype, p->ai_protocol);
  if (fd == INVALID_SOCKET) {
   if (verbose) {
    perror("socket()");
   }
   continue;
  }
  opt = 1;
  setsockopt(fd, SOL_SOCKET, SO_REUSEADDR,
   (void *)&opt, sizeof opt);
  if (bind(fd, sa, sa_len) < 0) {
   if (verbose) {
    perror("bind()");
   }



   close(fd);

   continue;
  }
  break;
 }
 if (p == ((void*)0)) {
  freeaddrinfo(si);
  fprintf(stderr, "ERROR: failed to bind\n");
  return INVALID_SOCKET;
 }
 freeaddrinfo(si);
 if (listen(fd, 5) < 0) {
  if (verbose) {
   perror("listen()");
  }



  close(fd);

  return INVALID_SOCKET;
 }
 if (verbose) {
  fprintf(stderr, "bound.\n");
 }
 return fd;
}
