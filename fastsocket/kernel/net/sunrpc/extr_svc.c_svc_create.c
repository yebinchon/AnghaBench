
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;
struct svc_program {int dummy; } ;


 struct svc_serv* __svc_create (struct svc_program*,unsigned int,int,void (*) (struct svc_serv*)) ;

struct svc_serv *
svc_create(struct svc_program *prog, unsigned int bufsize,
    void (*shutdown)(struct svc_serv *serv))
{
 return __svc_create(prog, bufsize, 1, shutdown);
}
