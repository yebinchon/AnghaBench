
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sv_nrpools; int * sv_pools; } ;


 int NFSD_MAXSERVS ;
 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;
 int nfsd_mutex ;
 TYPE_1__* nfsd_serv ;
 int svc_destroy (TYPE_1__*) ;
 int svc_get (TYPE_1__*) ;
 int svc_set_num_threads (TYPE_1__*,int *,int) ;

int nfsd_set_nrthreads(int n, int *nthreads)
{
 int i = 0;
 int tot = 0;
 int err = 0;

 WARN_ON(!mutex_is_locked(&nfsd_mutex));

 if (nfsd_serv == ((void*)0) || n <= 0)
  return 0;

 if (n > nfsd_serv->sv_nrpools)
  n = nfsd_serv->sv_nrpools;


 tot = 0;
 for (i = 0; i < n; i++) {
  if (nthreads[i] > NFSD_MAXSERVS)
   nthreads[i] = NFSD_MAXSERVS;
  tot += nthreads[i];
 }
 if (tot > NFSD_MAXSERVS) {

  for (i = 0; i < n && tot > 0; i++) {
       int new = nthreads[i] * NFSD_MAXSERVS / tot;
   tot -= (nthreads[i] - new);
   nthreads[i] = new;
  }
  for (i = 0; i < n && tot > 0; i++) {
   nthreads[i]--;
   tot--;
  }
 }





 if (nthreads[0] == 0)
  nthreads[0] = 1;


 svc_get(nfsd_serv);
 for (i = 0; i < n; i++) {
  err = svc_set_num_threads(nfsd_serv, &nfsd_serv->sv_pools[i],
           nthreads[i]);
  if (err)
   break;
 }
 svc_destroy(nfsd_serv);

 return err;
}
