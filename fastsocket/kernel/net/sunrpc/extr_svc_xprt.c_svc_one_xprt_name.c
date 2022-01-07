
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_xprt {TYPE_1__* xpt_class; } ;
struct TYPE_2__ {char* xcl_name; } ;


 int ENAMETOOLONG ;
 int snprintf (char*,int,char*,char*,int) ;
 int svc_xprt_local_port (struct svc_xprt const*) ;

__attribute__((used)) static int svc_one_xprt_name(const struct svc_xprt *xprt,
        char *pos, int remaining)
{
 int len;

 len = snprintf(pos, remaining, "%s %u\n",
   xprt->xpt_class->xcl_name,
   svc_xprt_local_port(xprt));
 if (len >= remaining)
  return -ENAMETOOLONG;
 return len;
}
