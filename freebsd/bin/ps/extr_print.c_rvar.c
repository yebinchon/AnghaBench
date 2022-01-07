
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* var; } ;
typedef TYPE_2__ VARENT ;
struct TYPE_10__ {int off; } ;
typedef TYPE_3__ VAR ;
struct TYPE_11__ {TYPE_1__* ki_p; int ki_valid; } ;
struct TYPE_8__ {int ki_rusage; } ;
typedef TYPE_4__ KINFO ;


 char* printval (char*,TYPE_3__*) ;

char *
rvar(KINFO *k, VARENT *ve)
{
 VAR *v;

 v = ve->var;
 if (!k->ki_valid)
  return (((void*)0));
 return (printval((char *)((char *)(&k->ki_p->ki_rusage) + v->off), v));
}
