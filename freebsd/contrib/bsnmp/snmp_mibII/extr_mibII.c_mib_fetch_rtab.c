
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int CTL_NET ;
 scalar_t__ ENOMEM ;
 int LOG_ERR ;
 int PF_ROUTE ;
 scalar_t__ errno ;
 int free (int *) ;
 int nitems (int*) ;
 int * realloc (int *,size_t) ;
 int sysctl (int*,int ,int *,size_t*,int *,int ) ;
 int syslog (int ,char*,...) ;

u_char *
mib_fetch_rtab(int af, int info, int arg, size_t *lenp)
{
 int name[6];
 u_char *buf, *newbuf;

 name[0] = CTL_NET;
 name[1] = PF_ROUTE;
 name[2] = 0;
 name[3] = af;
 name[4] = info;
 name[5] = arg;

 *lenp = 0;


 if (sysctl(name, nitems(name), ((void*)0), lenp, ((void*)0), 0) == -1) {
  syslog(LOG_ERR, "sysctl estimate (%d,%d,%d,%d,%d,%d): %m",
      name[0], name[1], name[2], name[3], name[4], name[5]);
  return (((void*)0));
 }
 if (*lenp == 0)
  return (((void*)0));

 buf = ((void*)0);
 for (;;) {
  if ((newbuf = realloc(buf, *lenp)) == ((void*)0)) {
   syslog(LOG_ERR, "sysctl buffer: %m");
   free(buf);
   return (((void*)0));
  }
  buf = newbuf;

  if (sysctl(name, nitems(name), buf, lenp, ((void*)0), 0) == 0)
   break;

  if (errno != ENOMEM) {
   syslog(LOG_ERR, "sysctl get: %m");
   free(buf);
   return (((void*)0));
  }
  *lenp += *lenp / 8 + 1;
 }

 return (buf);
}
