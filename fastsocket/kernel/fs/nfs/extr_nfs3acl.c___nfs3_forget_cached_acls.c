
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {void* acl_default; void* acl_access; } ;


 int EAGAIN ;
 void* ERR_PTR (int ) ;
 int IS_ERR (void*) ;
 int posix_acl_release (void*) ;

__attribute__((used)) static void __nfs3_forget_cached_acls(struct nfs_inode *nfsi)
{
 if (!IS_ERR(nfsi->acl_access)) {
  posix_acl_release(nfsi->acl_access);
  nfsi->acl_access = ERR_PTR(-EAGAIN);
 }
 if (!IS_ERR(nfsi->acl_default)) {
  posix_acl_release(nfsi->acl_default);
  nfsi->acl_default = ERR_PTR(-EAGAIN);
 }
}
