
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mf_fo; } ;
typedef TYPE_2__ mntfs ;
typedef int am_node ;
struct TYPE_4__ {int opt_mount; } ;


 int amfs_program_exec (int ) ;

__attribute__((used)) static int
amfs_program_mount(am_node *am, mntfs *mf)
{
  return amfs_program_exec(mf->mf_fo->opt_mount);
}
