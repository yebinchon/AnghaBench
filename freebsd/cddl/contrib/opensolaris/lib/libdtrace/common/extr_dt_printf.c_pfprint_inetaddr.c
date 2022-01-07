
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hostent {char* h_name; } ;
typedef int dtrace_hdl_t ;
typedef int dt_pfargd_t ;
typedef int buf ;
typedef int FILE ;


 int AF_INET ;
 int AF_INET6 ;
 int NS_IN6ADDRSZ ;
 int NS_INADDRSZ ;
 char* alloca (size_t) ;
 int bcopy (void const*,char*,size_t) ;
 int dt_printf (int *,int *,char const*,char*) ;
 struct hostent* gethostbyaddr_r (char*,int ,int ,struct hostent*,char*,int,...) ;
 struct hostent* getipnodebyaddr (char*,int,int ,int*) ;
 int inet_pton (int ,char*,char*) ;
 int * strchr (char*,char) ;

__attribute__((used)) static int
pfprint_inetaddr(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
 char *s = alloca(size + 1);
 struct hostent *host, res;
 char inetaddr[NS_IN6ADDRSZ];
 char buf[1024];
 int e;

 bcopy(addr, s, size);
 s[size] = '\0';

 if (strchr(s, ':') == ((void*)0) && inet_pton(AF_INET, s, inetaddr) != -1) {




  if (gethostbyaddr_r(inetaddr, NS_INADDRSZ,
      AF_INET, &res, buf, sizeof (buf), &host, &e) > 0)

   return (dt_printf(dtp, fp, format, host->h_name));
 } else if (inet_pton(AF_INET6, s, inetaddr) != -1) {
  if ((host = getipnodebyaddr(inetaddr, NS_IN6ADDRSZ,
      AF_INET6, &e)) != ((void*)0))
   return (dt_printf(dtp, fp, format, host->h_name));
 }

 return (dt_printf(dtp, fp, format, s));
}
