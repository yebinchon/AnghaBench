
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;


 int getnum (char const*,size_t,int,void*,char*,char const*) ;
 struct servent* getservbyname (char const*,char*) ;
 int ntohs (int ) ;

__attribute__((used)) static int
getport(const char *f, size_t l, bool local, void *r, const char *p)
{
 struct servent *sv;


 if ((sv = getservbyname(p, "tcp")) != ((void*)0)) {
  *(int *)r = ntohs(sv->s_port);
  return 0;
 }
 if ((sv = getservbyname(p, "udp")) != ((void*)0)) {
  *(int *)r = ntohs(sv->s_port);
  return 0;
 }

 return getnum(f, l, local, r, "service", p);
}
