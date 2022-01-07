
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pohmelfs_inode {int ino; } ;
typedef int netfs_trans_complete_t ;


 int pohmelfs_meta_command_data (struct pohmelfs_inode*,int ,unsigned int,int *,unsigned int,int ,void*,int ) ;

int pohmelfs_meta_command(struct pohmelfs_inode *pi, unsigned int cmd_op, unsigned int flags,
  netfs_trans_complete_t complete, void *priv, u64 start)
{
 return pohmelfs_meta_command_data(pi, pi->ino, cmd_op, ((void*)0), flags, complete, priv, start);
}
