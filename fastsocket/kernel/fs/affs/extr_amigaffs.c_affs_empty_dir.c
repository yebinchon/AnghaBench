
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {scalar_t__* table; } ;
struct TYPE_3__ {int s_hashsize; } ;


 TYPE_2__* AFFS_HEAD (struct buffer_head*) ;
 TYPE_1__* AFFS_SB (struct super_block*) ;
 int EIO ;
 int ENOTEMPTY ;
 struct buffer_head* affs_bread (struct super_block*,int ) ;
 int affs_brelse (struct buffer_head*) ;

__attribute__((used)) static int
affs_empty_dir(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;
 struct buffer_head *bh;
 int retval, size;

 retval = -EIO;
 bh = affs_bread(sb, inode->i_ino);
 if (!bh)
  goto done;

 retval = -ENOTEMPTY;
 for (size = AFFS_SB(sb)->s_hashsize - 1; size >= 0; size--)
  if (AFFS_HEAD(bh)->table[size])
   goto not_empty;
 retval = 0;
not_empty:
 affs_brelse(bh);
done:
 return retval;
}
