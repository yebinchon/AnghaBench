
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* opt_rfs; } ;
typedef TYPE_1__ am_opts ;
struct TYPE_6__ {char* (* fs_match ) (TYPE_1__*) ;} ;
typedef TYPE_2__ am_ops ;


 char* stub1 (TYPE_1__*) ;

__attribute__((used)) static char *
amfs_host_match(am_opts *fo)
{
  extern am_ops nfs_ops;




  if (!fo->opt_rfs)
    fo->opt_rfs = "/";

  return (*nfs_ops.fs_match) (fo);
}
