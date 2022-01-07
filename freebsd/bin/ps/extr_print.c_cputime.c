
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VARENT ;
struct TYPE_8__ {TYPE_2__* ki_p; } ;
struct TYPE_6__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {int ki_runtime; TYPE_1__ ki_childtime; } ;
typedef TYPE_3__ KINFO ;


 char* printtime (TYPE_3__*,int *,long,long) ;
 scalar_t__ sumrusage ;

char *
cputime(KINFO *k, VARENT *ve)
{
 long secs, psecs;






 secs = k->ki_p->ki_runtime / 1000000;
 psecs = k->ki_p->ki_runtime % 1000000;
 if (sumrusage) {
  secs += k->ki_p->ki_childtime.tv_sec;
  psecs += k->ki_p->ki_childtime.tv_usec;
 }
 return (printtime(k, ve, secs, psecs));
}
