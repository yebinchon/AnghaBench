
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sv_nrthreads; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfsd_mutex ;
 TYPE_1__* nfsd_serv ;

int nfsd_nrthreads(void)
{
 int rv = 0;
 mutex_lock(&nfsd_mutex);
 if (nfsd_serv)
  rv = nfsd_serv->sv_nrthreads;
 mutex_unlock(&nfsd_mutex);
 return rv;
}
