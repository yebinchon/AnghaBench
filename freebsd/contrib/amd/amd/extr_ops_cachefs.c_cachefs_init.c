
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ voidp ;
struct TYPE_5__ {void (* mf_prfree ) (scalar_t__) ;TYPE_1__* mf_fo; scalar_t__ mf_private; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_4__ {int opt_cachedir; } ;


 scalar_t__ free ;
 scalar_t__ xstrdup (int ) ;

__attribute__((used)) static int
cachefs_init(mntfs *mf)
{



  if (!mf->mf_private) {
    mf->mf_private = (voidp) xstrdup(mf->mf_fo->opt_cachedir);
    mf->mf_prfree = (void (*)(voidp)) free;
  }

  return 0;
}
