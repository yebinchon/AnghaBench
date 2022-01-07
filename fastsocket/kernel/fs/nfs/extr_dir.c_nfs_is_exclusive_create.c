
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int version; } ;


 int LOOKUP_EXCL ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 scalar_t__ nfs_lookup_check_intent (struct nameidata*,int ) ;

__attribute__((used)) static int nfs_is_exclusive_create(struct inode *dir, struct nameidata *nd)
{
 if (NFS_PROTO(dir)->version == 2)
  return 0;
 return nd && nfs_lookup_check_intent(nd, LOOKUP_EXCL);
}
