
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mapping; } ;
struct TYPE_2__ {int i_reserved_meta_blocks; int i_reserved_data_blocks; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int filemap_flush (int ) ;
 int trace_ext4_alloc_da_blocks (struct inode*) ;

int ext4_alloc_da_blocks(struct inode *inode)
{
 trace_ext4_alloc_da_blocks(inode);

 if (!EXT4_I(inode)->i_reserved_data_blocks &&
     !EXT4_I(inode)->i_reserved_meta_blocks)
  return 0;
 return filemap_flush(inode->i_mapping);
}
