
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nfs_server {int backing_dev_info; } ;


 struct nfs_server* NFS_SB (struct super_block*) ;
 int bdi_unregister (int *) ;

__attribute__((used)) static void nfs_put_super(struct super_block *s)
{
 struct nfs_server *server = NFS_SB(s);

 bdi_unregister(&server->backing_dev_info);
}
