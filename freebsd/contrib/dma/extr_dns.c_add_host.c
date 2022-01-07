
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct addrinfo {int ai_addrlen; int * ai_addr; struct addrinfo* ai_next; int ai_protocol; int ai_socktype; int ai_family; } ;
struct mx_hostentry {int pref; int addr; struct addrinfo ai; int sa; int host; } ;
typedef int servname ;
typedef int hints ;




 int IPPROTO_TCP ;
 int NI_NUMERICHOST ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int bcopy (int *,int *,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int getnameinfo (struct sockaddr*,int ,int ,int,int *,int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 struct mx_hostentry* reallocf (struct mx_hostentry*,size_t) ;
 size_t roundup (size_t,int const) ;
 int snprintf (char*,int,char*,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
add_host(int pref, const char *host, int port, struct mx_hostentry **he, size_t *ps)
{
 struct addrinfo hints, *res, *res0 = ((void*)0);
 char servname[10];
 struct mx_hostentry *p;
 const int count_inc = 10;

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_protocol = IPPROTO_TCP;

 snprintf(servname, sizeof(servname), "%d", port);
 switch (getaddrinfo(host, servname, &hints, &res0)) {
 case 0:
  break;
 case 129:
 case 128:
  goto out;
 default:
  return(-1);
 }

 for (res = res0; res != ((void*)0); res = res->ai_next) {
  if (*ps + 1 >= roundup(*ps, count_inc)) {
   size_t newsz = roundup(*ps + 2, count_inc);
   *he = reallocf(*he, newsz * sizeof(**he));
   if (*he == ((void*)0))
    goto out;
  }

  p = &(*he)[*ps];
  strlcpy(p->host, host, sizeof(p->host));
  p->pref = pref;
  p->ai = *res;
  p->ai.ai_addr = ((void*)0);
  bcopy(res->ai_addr, &p->sa, p->ai.ai_addrlen);

  getnameinfo((struct sockaddr *)&p->sa, p->ai.ai_addrlen,
       p->addr, sizeof(p->addr),
       ((void*)0), 0, NI_NUMERICHOST);

  (*ps)++;
 }
 freeaddrinfo(res0);

 return (0);

out:
 if (res0 != ((void*)0))
  freeaddrinfo(res0);
 return (1);
}
