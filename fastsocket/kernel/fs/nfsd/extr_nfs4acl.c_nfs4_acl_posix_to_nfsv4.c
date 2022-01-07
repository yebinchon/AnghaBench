
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int a_count; } ;
struct nfs4_acl {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct nfs4_acl* ERR_PTR (int ) ;
 unsigned int NFS4_ACL_TYPE_DEFAULT ;
 int _posix_to_nfsv4_one (struct posix_acl*,struct nfs4_acl*,unsigned int) ;
 struct nfs4_acl* nfs4_acl_new (int) ;
 scalar_t__ posix_acl_valid (struct posix_acl*) ;

struct nfs4_acl *
nfs4_acl_posix_to_nfsv4(struct posix_acl *pacl, struct posix_acl *dpacl,
   unsigned int flags)
{
 struct nfs4_acl *acl;
 int size = 0;

 if (pacl) {
  if (posix_acl_valid(pacl) < 0)
   return ERR_PTR(-EINVAL);
  size += 2*pacl->a_count;
 }
 if (dpacl) {
  if (posix_acl_valid(dpacl) < 0)
   return ERR_PTR(-EINVAL);
  size += 2*dpacl->a_count;
 }


 acl = nfs4_acl_new(size);
 if (acl == ((void*)0))
  return ERR_PTR(-ENOMEM);

 if (pacl)
  _posix_to_nfsv4_one(pacl, acl, flags & ~NFS4_ACL_TYPE_DEFAULT);

 if (dpacl)
  _posix_to_nfsv4_one(dpacl, acl, flags | NFS4_ACL_TYPE_DEFAULT);

 return acl;
}
