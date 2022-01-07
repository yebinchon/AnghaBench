
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int fileid; } ;


 unsigned long nfs_fileid_to_ino_t (int ) ;

__attribute__((used)) static inline unsigned long
nfs_fattr_to_ino_t(struct nfs_fattr *fattr)
{
 return nfs_fileid_to_ino_t(fattr->fileid);
}
