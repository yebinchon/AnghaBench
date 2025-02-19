
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_size; TYPE_1__* i_sb; int i_mode; } ;
typedef int loff_t ;
struct TYPE_2__ {int s_blocksize; int s_blocksize_bits; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int UNFM_P_SIZE ;

__attribute__((used)) static int real_space_diff(struct inode *inode, int sd_size)
{
 int bytes;
 loff_t blocksize = inode->i_sb->s_blocksize;

 if (S_ISLNK(inode->i_mode) || S_ISDIR(inode->i_mode))
  return sd_size;
 bytes =
     ((inode->i_size +
       (blocksize - 1)) >> inode->i_sb->s_blocksize_bits) * UNFM_P_SIZE +
     sd_size;
 return bytes;
}
