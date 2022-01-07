
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VARENT ;
struct TYPE_5__ {char* prefix; } ;
struct TYPE_7__ {TYPE_2__* ki_p; TYPE_1__ ki_d; } ;
struct TYPE_6__ {int ki_numthreads; char* ki_tdname; char* ki_moretdname; int ki_comm; } ;
typedef TYPE_3__ KINFO ;


 int * STAILQ_NEXT (int *,int ) ;
 int asprintf (char**,char*,char*,char*,char*,...) ;
 int next_ve ;
 scalar_t__ showthreads ;
 char* strdup (int ) ;

char *
ucomm(KINFO *k, VARENT *ve)
{
 char *str;

 if (STAILQ_NEXT(ve, next_ve) == ((void*)0)) {
  asprintf(&str, "%s%s%s%s%s",
      k->ki_d.prefix ? k->ki_d.prefix : "",
      k->ki_p->ki_comm,
      (showthreads && k->ki_p->ki_numthreads > 1) ? "/" : "",
      (showthreads && k->ki_p->ki_numthreads > 1) ? k->ki_p->ki_tdname : "",
      (showthreads && k->ki_p->ki_numthreads > 1) ? k->ki_p->ki_moretdname : "");
 } else {
  if (showthreads && k->ki_p->ki_numthreads > 1)
   asprintf(&str, "%s/%s%s", k->ki_p->ki_comm,
       k->ki_p->ki_tdname, k->ki_p->ki_moretdname);
  else
   str = strdup(k->ki_p->ki_comm);
 }
 return (str);
}
