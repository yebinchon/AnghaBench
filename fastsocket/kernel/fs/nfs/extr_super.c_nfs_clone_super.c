
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_time_gran; int s_op; int s_flags; int s_maxbytes; int s_blocksize; int s_blocksize_bits; } ;
struct nfs_server {TYPE_2__* nfs_client; } ;
struct TYPE_4__ {TYPE_1__* rpc_ops; } ;
struct TYPE_3__ {int version; } ;


 int MS_POSIXACL ;
 struct nfs_server* NFS_SB (struct super_block*) ;
 int nfs_initialise_sb (struct super_block*) ;

__attribute__((used)) static void nfs_clone_super(struct super_block *sb,
       const struct super_block *old_sb)
{
 struct nfs_server *server = NFS_SB(sb);

 sb->s_blocksize_bits = old_sb->s_blocksize_bits;
 sb->s_blocksize = old_sb->s_blocksize;
 sb->s_maxbytes = old_sb->s_maxbytes;

 if (server->nfs_client->rpc_ops->version == 3) {



  sb->s_flags |= MS_POSIXACL;
  sb->s_time_gran = 1;
 }

 sb->s_op = old_sb->s_op;
  nfs_initialise_sb(sb);
}
