
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_createdata {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int d_name; } ;


 int ENOMEM ;
 int NF4DIR ;
 struct nfs4_createdata* nfs4_alloc_createdata (struct inode*,int *,struct iattr*,int ) ;
 int nfs4_do_create (struct inode*,struct dentry*,struct nfs4_createdata*) ;
 int nfs4_free_createdata (struct nfs4_createdata*) ;

__attribute__((used)) static int _nfs4_proc_mkdir(struct inode *dir, struct dentry *dentry,
  struct iattr *sattr)
{
 struct nfs4_createdata *data;
 int status = -ENOMEM;

 data = nfs4_alloc_createdata(dir, &dentry->d_name, sattr, NF4DIR);
 if (data == ((void*)0))
  goto out;

 status = nfs4_do_create(dir, dentry, data);

 nfs4_free_createdata(data);
out:
 return status;
}
