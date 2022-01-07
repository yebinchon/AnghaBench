
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nfs_server {int dummy; } ;


 struct nfs_server* NFS_SB (struct super_block*) ;
 int kill_anon_super (struct super_block*) ;
 int nfs_free_server (struct nfs_server*) ;
 int nfs_fscache_release_super_cookie (struct super_block*) ;

__attribute__((used)) static void nfs_kill_super(struct super_block *s)
{
 struct nfs_server *server = NFS_SB(s);

 kill_anon_super(s);
 nfs_fscache_release_super_cookie(s);
 nfs_free_server(server);
}
