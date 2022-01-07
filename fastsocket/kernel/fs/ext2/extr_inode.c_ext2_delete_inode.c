
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; scalar_t__ i_blocks; scalar_t__ i_size; int i_data; } ;
struct TYPE_2__ {int i_dtime; } ;


 TYPE_1__* EXT2_I (struct inode*) ;
 int __ext2_write_inode (struct inode*,int ) ;
 int clear_inode (struct inode*) ;
 int ext2_free_inode (struct inode*) ;
 int ext2_truncate (struct inode*) ;
 int get_seconds () ;
 int inode_needs_sync (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int sb_end_intwrite (int ) ;
 int sb_start_intwrite (int ) ;
 int truncate_inode_pages (int *,int ) ;

void ext2_delete_inode (struct inode * inode)
{
 truncate_inode_pages(&inode->i_data, 0);

 if (is_bad_inode(inode))
  goto no_delete;
 sb_start_intwrite(inode->i_sb);
 EXT2_I(inode)->i_dtime = get_seconds();
 mark_inode_dirty(inode);
 __ext2_write_inode(inode, inode_needs_sync(inode));

 inode->i_size = 0;
 if (inode->i_blocks)
  ext2_truncate (inode);
 ext2_free_inode (inode);
 sb_end_intwrite(inode->i_sb);

 return;
no_delete:
 clear_inode(inode);
}
