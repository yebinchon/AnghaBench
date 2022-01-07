
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext3_inode_info {int dummy; } ;
struct TYPE_5__ {int i_orphan; } ;


 int DUMP_PREFIX_ADDRESS ;
 TYPE_1__* EXT3_I (struct inode*) ;
 int KERN_INFO ;
 int dump_stack () ;
 int ext3_inode_cachep ;
 int kmem_cache_free (int ,TYPE_1__*) ;
 int list_empty (int *) ;
 int print_hex_dump (int ,char*,int ,int,int,TYPE_1__*,int,int) ;
 int printk (char*,TYPE_1__*) ;

__attribute__((used)) static void ext3_destroy_inode(struct inode *inode)
{
 if (!list_empty(&(EXT3_I(inode)->i_orphan))) {
  printk("EXT3 Inode %p: orphan list check failed!\n",
   EXT3_I(inode));
  print_hex_dump(KERN_INFO, "", DUMP_PREFIX_ADDRESS, 16, 4,
    EXT3_I(inode), sizeof(struct ext3_inode_info),
    0);
  dump_stack();
 }
 kmem_cache_free(ext3_inode_cachep, EXT3_I(inode));
}
