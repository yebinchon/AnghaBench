
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VARENT ;
struct TYPE_12__ {TYPE_4__* ki_p; } ;
struct TYPE_10__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_8__ {long tv_sec; long tv_usec; } ;
struct TYPE_9__ {TYPE_1__ ru_utime; } ;
struct TYPE_11__ {TYPE_3__ ki_childutime; TYPE_2__ ki_rusage; } ;
typedef TYPE_5__ KINFO ;


 char* printtime (TYPE_5__*,int *,long,long) ;
 scalar_t__ sumrusage ;

char *
usertime(KINFO *k, VARENT *ve)
{
 long secs, psecs;

 secs = k->ki_p->ki_rusage.ru_utime.tv_sec;
 psecs = k->ki_p->ki_rusage.ru_utime.tv_usec;
 if (sumrusage) {
  secs += k->ki_p->ki_childutime.tv_sec;
  psecs += k->ki_p->ki_childutime.tv_usec;
 }
 return (printtime(k, ve, secs, psecs));
}
