
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct nfs4_secinfo_flavors {int dummy; } ;
struct inode {int dummy; } ;
typedef int rpc_authflavor_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct page* alloc_page (int ) ;
 int nfs4_proc_secinfo (struct inode*,struct qstr*,struct nfs4_secinfo_flavors*) ;
 int nfs_find_best_sec (struct nfs4_secinfo_flavors*) ;
 struct nfs4_secinfo_flavors* page_address (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static rpc_authflavor_t nfs4_negotiate_security(struct inode *inode, struct qstr *name)
{
 struct page *page;
 struct nfs4_secinfo_flavors *flavors;
 rpc_authflavor_t flavor;
 int err;

 page = alloc_page(GFP_KERNEL);
 if (!page)
  return -ENOMEM;
 flavors = page_address(page);

 err = nfs4_proc_secinfo(inode, name, flavors);
 if (err < 0) {
  flavor = err;
  goto out;
 }

 flavor = nfs_find_best_sec(flavors);

out:
 put_page(page);
 return flavor;
}
