
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
typedef int AUTH_CREATE_GIDLIST_TYPE ;


 int CFM_FULLY_QUALIFIED_HOSTS ;
 int ENOBUFS ;
 int XLOG_INFO ;
 int authsys_create (int ,int ,int ,int,int *) ;
 int authsys_create_default () ;
 int authunix_create (int ,int ,int ,int,int *) ;
 int authunix_create_default () ;
 TYPE_1__ gopt ;
 int hostd ;
 int nfs_auth ;
 int plog (int ,char*,int ) ;

int
make_nfs_auth(void)
{
  AUTH_CREATE_GIDLIST_TYPE group_wheel = 0;
  if (gopt.flags & CFM_FULLY_QUALIFIED_HOSTS) {
    plog(XLOG_INFO, "Using NFS auth for FQHN \"%s\"", hostd);
    nfs_auth = authunix_create(hostd, 0, 0, 1, &group_wheel);
  } else {
    nfs_auth = authunix_create_default();
  }


  if (!nfs_auth)
    return ENOBUFS;

  return 0;
}
