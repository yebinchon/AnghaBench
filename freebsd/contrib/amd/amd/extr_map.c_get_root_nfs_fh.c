
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int am_node ;
struct TYPE_4__ {int v3; int v2; } ;
typedef TYPE_1__ am_nfs_handle_t ;


 int XLOG_ERROR ;
 int * get_root_ap (char*) ;
 int mp_to_fh (int *,int *) ;
 int mp_to_fh3 (int *,int *) ;
 scalar_t__ nfs_dispatcher ;
 scalar_t__ nfs_program_2 ;
 int plog (int ,char*,char*) ;

am_nfs_handle_t *
get_root_nfs_fh(char *dir, am_nfs_handle_t *nfh)
{
  am_node *mp = get_root_ap(dir);
  if (mp) {
    if (nfs_dispatcher == nfs_program_2)
      mp_to_fh(mp, &nfh->v2);
    else
      mp_to_fh3(mp, &nfh->v3);
    return nfh;
  }




  plog(XLOG_ERROR, "Can't find root filehandle for %s", dir);

  return 0;
}
