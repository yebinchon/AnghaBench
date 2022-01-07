
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cacherep {int dummy; } ;


 int cache_lock ;
 int nfsd_reply_cache_free_locked (struct svc_cacherep*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
nfsd_reply_cache_free(struct svc_cacherep *rp)
{
 spin_lock(&cache_lock);
 nfsd_reply_cache_free_locked(rp);
 spin_unlock(&cache_lock);
}
