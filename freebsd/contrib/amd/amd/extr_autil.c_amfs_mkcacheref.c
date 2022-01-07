
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ opaque_t ;
struct TYPE_5__ {int mf_prfree; int mf_mount; TYPE_1__* mf_fo; int mf_info; scalar_t__ mf_private; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_4__ {char* opt_cache; int * opt_maptype; } ;


 scalar_t__ mapc_find (int ,char*,int *,int ) ;
 int mapc_free ;

void
amfs_mkcacheref(mntfs *mf)
{
  char *cache;

  if (mf->mf_fo && mf->mf_fo->opt_cache)
    cache = mf->mf_fo->opt_cache;
  else
    cache = "none";
  mf->mf_private = (opaque_t) mapc_find(mf->mf_info,
     cache,
     (mf->mf_fo ? mf->mf_fo->opt_maptype : ((void*)0)),
     mf->mf_mount);
  mf->mf_prfree = mapc_free;
}
