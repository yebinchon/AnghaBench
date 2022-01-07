
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fs_refc; } ;
typedef TYPE_1__ fserver ;



fserver *
dup_srvr(fserver *fs)
{
  fs->fs_refc++;
  return fs;
}
