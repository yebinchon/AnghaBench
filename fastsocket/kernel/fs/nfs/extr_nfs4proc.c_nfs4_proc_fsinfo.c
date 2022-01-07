
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs_fsinfo {int fattr; } ;
struct nfs_fh {int dummy; } ;


 int nfs4_do_fsinfo (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ;
 int nfs_fattr_init (int ) ;

__attribute__((used)) static int nfs4_proc_fsinfo(struct nfs_server *server, struct nfs_fh *fhandle, struct nfs_fsinfo *fsinfo)
{
 nfs_fattr_init(fsinfo->fattr);
 return nfs4_do_fsinfo(server, fhandle, fsinfo);
}
