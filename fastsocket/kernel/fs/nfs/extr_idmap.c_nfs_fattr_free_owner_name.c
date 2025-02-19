
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_fattr {TYPE_1__* owner_name; int valid; } ;
struct TYPE_2__ {int data; } ;


 int NFS_ATTR_FATTR_OWNER_NAME ;
 int kfree (int ) ;

__attribute__((used)) static void nfs_fattr_free_owner_name(struct nfs_fattr *fattr)
{
 fattr->valid &= ~NFS_ATTR_FATTR_OWNER_NAME;
 kfree(fattr->owner_name->data);
}
