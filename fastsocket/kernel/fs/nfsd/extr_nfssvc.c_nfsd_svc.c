
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sv_nrthreads; } ;


 int NFSD_MAXSERVS ;
 int dprintk (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfsd_create_serv () ;
 int nfsd_mutex ;
 TYPE_1__* nfsd_serv ;
 int nfsd_shutdown () ;
 int nfsd_startup (unsigned short,int) ;
 int nfsd_up ;
 int svc_destroy (TYPE_1__*) ;
 int svc_set_num_threads (TYPE_1__*,int *,int) ;

int
nfsd_svc(unsigned short port, int nrservs)
{
 int error;
 bool nfsd_up_before;

 mutex_lock(&nfsd_mutex);
 dprintk("nfsd: creating service\n");
 if (nrservs <= 0)
  nrservs = 0;
 if (nrservs > NFSD_MAXSERVS)
  nrservs = NFSD_MAXSERVS;
 error = 0;
 if (nrservs == 0 && nfsd_serv == ((void*)0))
  goto out;

 error = nfsd_create_serv();
 if (error)
  goto out;

 nfsd_up_before = nfsd_up;

 error = nfsd_startup(port, nrservs);
 if (error)
  goto out_destroy;
 error = svc_set_num_threads(nfsd_serv, ((void*)0), nrservs);
 if (error)
  goto out_shutdown;




 error = nfsd_serv->sv_nrthreads - 1;
out_shutdown:
 if (error < 0 && !nfsd_up_before)
  nfsd_shutdown();
out_destroy:
 svc_destroy(nfsd_serv);
out:
 mutex_unlock(&nfsd_mutex);
 return error;
}
