
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* opaque_t ;
struct TYPE_5__ {void (* mf_prfree ) (void*) ;TYPE_1__* mf_fo; int * mf_private; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_4__ {int * opt_umount; int * opt_unmount; } ;


 scalar_t__ free ;
 scalar_t__ xstrdup (int *) ;

__attribute__((used)) static int
amfs_program_init(mntfs *mf)
{

  if (mf->mf_private != ((void*)0))
    return 0;

  if (mf->mf_fo == ((void*)0))
    return 0;


  if (mf->mf_fo->opt_unmount != ((void*)0))
    mf->mf_private = (opaque_t) xstrdup(mf->mf_fo->opt_unmount);
  else
    mf->mf_private = (opaque_t) xstrdup(mf->mf_fo->opt_umount);
  mf->mf_prfree = (void (*)(opaque_t)) free;

  return 0;
}
