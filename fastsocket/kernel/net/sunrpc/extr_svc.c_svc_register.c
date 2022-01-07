
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_serv {struct svc_program* sv_program; } ;
struct svc_program {unsigned int pg_nvers; int pg_prog; int pg_name; TYPE_1__** pg_vers; struct svc_program* pg_next; } ;
struct TYPE_2__ {scalar_t__ vs_hidden; } ;


 int BUG_ON (int) ;
 unsigned short const IPPROTO_UDP ;
 int __svc_register (int ,int ,unsigned int,int const,unsigned short const,unsigned short const) ;
 int dprintk (char*,int ,unsigned int,char*,unsigned short const,int const,char*) ;

int svc_register(const struct svc_serv *serv, const int family,
   const unsigned short proto, const unsigned short port)
{
 struct svc_program *progp;
 unsigned int i;
 int error = 0;

 BUG_ON(proto == 0 && port == 0);

 for (progp = serv->sv_program; progp; progp = progp->pg_next) {
  for (i = 0; i < progp->pg_nvers; i++) {
   if (progp->pg_vers[i] == ((void*)0))
    continue;

   dprintk("svc: svc_register(%sv%d, %s, %u, %u)%s\n",
     progp->pg_name,
     i,
     proto == IPPROTO_UDP? "udp" : "tcp",
     port,
     family,
     progp->pg_vers[i]->vs_hidden?
      " (but not telling portmap)" : "");

   if (progp->pg_vers[i]->vs_hidden)
    continue;

   error = __svc_register(progp->pg_name, progp->pg_prog,
      i, family, proto, port);
   if (error < 0)
    break;
  }
 }

 return error;
}
