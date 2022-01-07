
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mf_private; } ;
typedef TYPE_1__ mntfs ;
typedef int am_node ;


 int amfs_program_exec (char*) ;

__attribute__((used)) static int
amfs_program_umount(am_node *am, mntfs *mf)
{
  return amfs_program_exec((char *) mf->mf_private);
}
