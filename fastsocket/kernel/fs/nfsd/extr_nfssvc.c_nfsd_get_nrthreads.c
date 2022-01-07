
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sv_nrpools; TYPE_1__* sv_pools; } ;
struct TYPE_3__ {int sp_nrthreads; } ;


 TYPE_2__* nfsd_serv ;

int nfsd_get_nrthreads(int n, int *nthreads)
{
 int i = 0;

 if (nfsd_serv != ((void*)0)) {
  for (i = 0; i < nfsd_serv->sv_nrpools && i < n; i++)
   nthreads[i] = nfsd_serv->sv_pools[i].sp_nrthreads;
 }

 return 0;
}
