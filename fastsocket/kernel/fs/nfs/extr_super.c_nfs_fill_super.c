
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_time_gran; int * s_op; int s_flags; scalar_t__ s_blocksize_bits; scalar_t__ s_blocksize; } ;
struct nfs_server {TYPE_2__* nfs_client; } ;
struct nfs_parsed_mount_data {scalar_t__ bsize; } ;
struct TYPE_4__ {TYPE_1__* rpc_ops; } ;
struct TYPE_3__ {int version; } ;


 int MS_POSIXACL ;
 struct nfs_server* NFS_SB (struct super_block*) ;
 scalar_t__ nfs_block_size (scalar_t__,scalar_t__*) ;
 int nfs_initialise_sb (struct super_block*) ;
 int nfs_sops ;

__attribute__((used)) static void nfs_fill_super(struct super_block *sb,
      struct nfs_parsed_mount_data *data)
{
 struct nfs_server *server = NFS_SB(sb);

 sb->s_blocksize_bits = 0;
 sb->s_blocksize = 0;
 if (data->bsize)
  sb->s_blocksize = nfs_block_size(data->bsize, &sb->s_blocksize_bits);

 if (server->nfs_client->rpc_ops->version == 3) {



  sb->s_flags |= MS_POSIXACL;
  sb->s_time_gran = 1;
 }

 sb->s_op = &nfs_sops;
  nfs_initialise_sb(sb);
}
