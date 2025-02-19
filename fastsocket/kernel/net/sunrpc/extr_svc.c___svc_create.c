
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_serv {int sv_nrthreads; unsigned int sv_max_payload; void (* sv_shutdown ) (struct svc_serv*) ;unsigned int sv_xdrsize; int sv_nrpools; unsigned int sp_id; struct svc_serv* sv_pools; int sp_lock; int sp_all_threads; int sp_sockets; int sp_threads; int sv_name; int sv_lock; int sv_temptimer; int sv_permsocks; int sv_tempsocks; int sv_max_mesg; int sv_stats; struct svc_program* sv_program; } ;
struct svc_program {int pg_lovers; int pg_nvers; unsigned int pg_hivers; struct svc_program* pg_next; TYPE_1__** pg_vers; int pg_stats; int pg_name; } ;
struct svc_pool {int sv_nrthreads; unsigned int sv_max_payload; void (* sv_shutdown ) (struct svc_serv*) ;unsigned int sv_xdrsize; int sv_nrpools; unsigned int sp_id; struct svc_pool* sv_pools; int sp_lock; int sp_all_threads; int sp_sockets; int sp_threads; int sv_name; int sv_lock; int sv_temptimer; int sv_permsocks; int sv_tempsocks; int sv_max_mesg; int sv_stats; struct svc_program* sv_program; } ;
struct TYPE_2__ {unsigned int vs_xdrsize; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ PAGE_SIZE ;
 unsigned int RPCSVC_MAXPAYLOAD ;
 int dprintk (char*,unsigned int,int ) ;
 int init_timer (int *) ;
 struct svc_serv* kcalloc (int,int,int ) ;
 int kfree (struct svc_serv*) ;
 struct svc_serv* kzalloc (int,int ) ;
 int roundup (scalar_t__,scalar_t__) ;
 int spin_lock_init (int *) ;
 void svc_rpcb_cleanup (struct svc_serv*) ;
 scalar_t__ svc_rpcb_setup (struct svc_serv*) ;
 scalar_t__ svc_uses_rpcbind (struct svc_serv*) ;

__attribute__((used)) static struct svc_serv *
__svc_create(struct svc_program *prog, unsigned int bufsize, int npools,
      void (*shutdown)(struct svc_serv *serv))
{
 struct svc_serv *serv;
 unsigned int vers;
 unsigned int xdrsize;
 unsigned int i;

 if (!(serv = kzalloc(sizeof(*serv), GFP_KERNEL)))
  return ((void*)0);
 serv->sv_name = prog->pg_name;
 serv->sv_program = prog;
 serv->sv_nrthreads = 1;
 serv->sv_stats = prog->pg_stats;
 if (bufsize > RPCSVC_MAXPAYLOAD)
  bufsize = RPCSVC_MAXPAYLOAD;
 serv->sv_max_payload = bufsize? bufsize : 4096;
 serv->sv_max_mesg = roundup(serv->sv_max_payload + PAGE_SIZE, PAGE_SIZE);
 serv->sv_shutdown = shutdown;
 xdrsize = 0;
 while (prog) {
  prog->pg_lovers = prog->pg_nvers-1;
  for (vers=0; vers<prog->pg_nvers ; vers++)
   if (prog->pg_vers[vers]) {
    prog->pg_hivers = vers;
    if (prog->pg_lovers > vers)
     prog->pg_lovers = vers;
    if (prog->pg_vers[vers]->vs_xdrsize > xdrsize)
     xdrsize = prog->pg_vers[vers]->vs_xdrsize;
   }
  prog = prog->pg_next;
 }
 serv->sv_xdrsize = xdrsize;
 INIT_LIST_HEAD(&serv->sv_tempsocks);
 INIT_LIST_HEAD(&serv->sv_permsocks);
 init_timer(&serv->sv_temptimer);
 spin_lock_init(&serv->sv_lock);

 serv->sv_nrpools = npools;
 serv->sv_pools =
  kcalloc(serv->sv_nrpools, sizeof(struct svc_pool),
   GFP_KERNEL);
 if (!serv->sv_pools) {
  kfree(serv);
  return ((void*)0);
 }

 for (i = 0; i < serv->sv_nrpools; i++) {
  struct svc_pool *pool = &serv->sv_pools[i];

  dprintk("svc: initialising pool %u for %s\n",
    i, serv->sv_name);

  pool->sp_id = i;
  INIT_LIST_HEAD(&pool->sp_threads);
  INIT_LIST_HEAD(&pool->sp_sockets);
  INIT_LIST_HEAD(&pool->sp_all_threads);
  spin_lock_init(&pool->sp_lock);
 }

 if (svc_uses_rpcbind(serv)) {
         if (svc_rpcb_setup(serv) < 0) {
   kfree(serv->sv_pools);
   kfree(serv);
   return ((void*)0);
  }
  if (!serv->sv_shutdown)
   serv->sv_shutdown = svc_rpcb_cleanup;
 }

 return serv;
}
