
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_blocks; int i_mode; TYPE_1__* i_sb; } ;
struct TYPE_4__ {scalar_t__ i_file_acl; } ;
struct TYPE_3__ {int s_blocksize; } ;


 TYPE_2__* EXT4_I (struct inode*) ;
 scalar_t__ S_ISLNK (int ) ;

__attribute__((used)) static int ext4_inode_is_fast_symlink(struct inode *inode)
{
 int ea_blocks = EXT4_I(inode)->i_file_acl ?
  (inode->i_sb->s_blocksize >> 9) : 0;

 return (S_ISLNK(inode->i_mode) && inode->i_blocks - ea_blocks == 0);
}
