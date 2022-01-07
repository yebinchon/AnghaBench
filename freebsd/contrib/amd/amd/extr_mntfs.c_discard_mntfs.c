
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* voidp ;
struct TYPE_6__ {int mf_q; } ;
typedef TYPE_1__ mntfs ;


 int XFREE (TYPE_1__*) ;
 int mntfs_allocated ;
 int rem_que (int *) ;
 int uninit_mntfs (TYPE_1__*) ;

__attribute__((used)) static void
discard_mntfs(voidp v)
{
  mntfs *mf = v;

  rem_que(&mf->mf_q);




  uninit_mntfs(mf);
  XFREE(mf);

  --mntfs_allocated;
}
