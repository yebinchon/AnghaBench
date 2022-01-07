
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svc_thread_fn ;
struct svc_serv {struct module* sv_module; int sv_function; } ;
struct svc_program {int dummy; } ;
struct module {int dummy; } ;


 struct svc_serv* __svc_create (struct svc_program*,unsigned int,unsigned int,void (*) (struct svc_serv*)) ;
 unsigned int svc_pool_map_get () ;

struct svc_serv *
svc_create_pooled(struct svc_program *prog, unsigned int bufsize,
    void (*shutdown)(struct svc_serv *serv),
    svc_thread_fn func, struct module *mod)
{
 struct svc_serv *serv;
 unsigned int npools = svc_pool_map_get();

 serv = __svc_create(prog, bufsize, npools, shutdown);

 if (serv != ((void*)0)) {
  serv->sv_function = func;
  serv->sv_module = mod;
 }

 return serv;
}
