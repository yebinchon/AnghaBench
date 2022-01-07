
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ki_p; } ;
struct TYPE_4__ {int ki_flag; scalar_t__ ki_rssize; } ;
typedef TYPE_2__ KINFO ;


 int P_INMEM ;
 int donlist () ;
 double mempages ;
 int nlistread ;

__attribute__((used)) static double
getpmem(KINFO *k)
{
 static int failure;
 double fracmem;

 if (!nlistread)
  failure = donlist();
 if (failure)
  return (0.0);

 if ((k->ki_p->ki_flag & P_INMEM) == 0)
  return (0.0);


 fracmem = ((double)k->ki_p->ki_rssize) / mempages;
 return (100.0 * fracmem);
}
