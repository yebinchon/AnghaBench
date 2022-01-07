
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int voidp ;
struct TYPE_3__ {int fs_flags; } ;
typedef TYPE_1__ fserver ;


 int FSF_WANT ;
 int wakeup (int ) ;

void
wakeup_srvr(fserver *fs)
{
  fs->fs_flags &= ~FSF_WANT;
  wakeup((voidp) fs);
}
