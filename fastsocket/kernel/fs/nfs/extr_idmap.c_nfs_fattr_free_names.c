
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int valid; } ;


 int NFS_ATTR_FATTR_GROUP_NAME ;
 int NFS_ATTR_FATTR_OWNER_NAME ;
 int nfs_fattr_free_group_name (struct nfs_fattr*) ;
 int nfs_fattr_free_owner_name (struct nfs_fattr*) ;

void nfs_fattr_free_names(struct nfs_fattr *fattr)
{
 if (fattr->valid & NFS_ATTR_FATTR_OWNER_NAME)
  nfs_fattr_free_owner_name(fattr);
 if (fattr->valid & NFS_ATTR_FATTR_GROUP_NAME)
  nfs_fattr_free_group_name(fattr);
}
