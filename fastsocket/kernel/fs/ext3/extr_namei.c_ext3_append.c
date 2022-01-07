
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_size; TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_4__ {int i_disksize; } ;
struct TYPE_3__ {int s_blocksize_bits; scalar_t__ s_blocksize; } ;


 TYPE_2__* EXT3_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* ext3_bread (int *,struct inode*,int,int,int*) ;
 int ext3_journal_get_write_access (int *,struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *ext3_append(handle_t *handle,
     struct inode *inode,
     u32 *block, int *err)
{
 struct buffer_head *bh;

 *block = inode->i_size >> inode->i_sb->s_blocksize_bits;

 bh = ext3_bread(handle, inode, *block, 1, err);
 if (bh) {
  inode->i_size += inode->i_sb->s_blocksize;
  EXT3_I(inode)->i_disksize = inode->i_size;
  *err = ext3_journal_get_write_access(handle, bh);
  if (*err) {
   brelse(bh);
   bh = ((void*)0);
  }
 }
 return bh;
}
