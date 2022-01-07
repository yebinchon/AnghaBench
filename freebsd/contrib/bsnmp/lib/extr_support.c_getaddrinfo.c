
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {scalar_t__ sin_family; int sin_len; int sin_port; int sin_addr; } ;
struct servent {int s_port; } ;
struct hostent {scalar_t__ h_addrtype; int h_addr; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; int * ai_addr; int * ai_next; int ai_protocol; int ai_socktype; int ai_flags; } ;


 scalar_t__ AF_INET ;
 int HOST_NOT_FOUND ;
 int freeaddrinfo (struct addrinfo*) ;
 struct hostent* gethostbyname (char const*) ;
 struct servent* getservbyname (char const*,int *) ;
 int h_errno ;
 void* malloc (int) ;
 int memcpy (int *,int ,int) ;

int
getaddrinfo(const char *host, const char *port, const struct addrinfo *hints,
    struct addrinfo **res)
{
 struct hostent *hent;
 struct sockaddr_in *s;
 struct servent *sent;

 if ((hent = gethostbyname(host)) == ((void*)0))
  return (h_errno);
 if (hent->h_addrtype != hints->ai_family)
  return (HOST_NOT_FOUND);
 if (hent->h_addrtype != AF_INET)
  return (HOST_NOT_FOUND);

 if ((*res = malloc(sizeof(**res))) == ((void*)0))
  return (HOST_NOT_FOUND);

 (*res)->ai_flags = hints->ai_flags;
 (*res)->ai_family = hints->ai_family;
 (*res)->ai_socktype = hints->ai_socktype;
 (*res)->ai_protocol = hints->ai_protocol;
 (*res)->ai_next = ((void*)0);

 if (((*res)->ai_addr = malloc(sizeof(struct sockaddr_in))) == ((void*)0)) {
  freeaddrinfo(*res);
  return (HOST_NOT_FOUND);
 }
 (*res)->ai_addrlen = sizeof(struct sockaddr_in);
 s = (struct sockaddr_in *)(*res)->ai_addr;
 s->sin_family = hints->ai_family;
 s->sin_len = sizeof(*s);
 memcpy(&s->sin_addr, hent->h_addr, 4);

 if ((sent = getservbyname(port, ((void*)0))) == ((void*)0)) {
  freeaddrinfo(*res);
  return (HOST_NOT_FOUND);
 }
 s->sin_port = sent->s_port;

 return (0);
}
