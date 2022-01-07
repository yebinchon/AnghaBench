
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_4__ {scalar_t__ mf_server; int mf_info; } ;
typedef TYPE_1__ mntfs ;


 int ENOENT ;
 int get_mntfs_wchan (TYPE_1__*) ;
 int get_mountd_port (scalar_t__,int *,int ) ;
 scalar_t__ strchr (int ,char) ;

__attribute__((used)) static int
amfs_host_init(mntfs *mf)
{
  u_short mountd_port;

  if (strchr(mf->mf_info, ':') == 0)
    return ENOENT;
  if (mf->mf_server)





    get_mountd_port(mf->mf_server, &mountd_port, get_mntfs_wchan(mf));

  return 0;
}
