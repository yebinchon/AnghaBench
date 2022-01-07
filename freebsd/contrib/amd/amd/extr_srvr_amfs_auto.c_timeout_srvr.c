
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* voidp ;
struct TYPE_7__ {scalar_t__ fs_refc; int fs_flags; struct TYPE_7__* fs_host; struct TYPE_7__* fs_ip; scalar_t__ fs_private; int (* fs_prfree ) (scalar_t__) ;int fs_q; } ;
typedef TYPE_1__ fserver ;


 int FSF_WANT ;
 int XFREE (TYPE_1__*) ;
 int dlog (char*,TYPE_1__*) ;
 int rem_que (int *) ;
 int stub1 (scalar_t__) ;
 int wakeup_srvr (TYPE_1__*) ;

__attribute__((used)) static void
timeout_srvr(voidp v)
{
  fserver *fs = v;





  if (fs->fs_refc == 0) {
    dlog("Deleting file server %s", fs->fs_host);
    if (fs->fs_flags & FSF_WANT)
      wakeup_srvr(fs);




    rem_que(&fs->fs_q);



    if (fs->fs_private && fs->fs_prfree)
      (*fs->fs_prfree) (fs->fs_private);




    XFREE(fs->fs_ip);




    XFREE(fs->fs_host);




    XFREE(fs);
  }
}
