
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct ext4_inode_info {int dummy; } ;
struct TYPE_5__ {int i_orphan; } ;


 int DUMP_PREFIX_ADDRESS ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int KERN_ERR ;
 int KERN_INFO ;
 int dump_stack () ;
 int ext4_inode_cachep ;
 int ext4_msg (int ,int ,char*,int ,TYPE_1__*) ;
 int kmem_cache_free (int ,TYPE_1__*) ;
 int list_empty (int *) ;
 int print_hex_dump (int ,char*,int ,int,int,TYPE_1__*,int,int) ;

__attribute__((used)) static void ext4_destroy_inode(struct inode *inode)
{
 if (!list_empty(&(EXT4_I(inode)->i_orphan))) {
  ext4_msg(inode->i_sb, KERN_ERR,
    "Inode %lu (%p): orphan list check failed!",
    inode->i_ino, EXT4_I(inode));
  print_hex_dump(KERN_INFO, "", DUMP_PREFIX_ADDRESS, 16, 4,
    EXT4_I(inode), sizeof(struct ext4_inode_info),
    1);
  dump_stack();
 }
 kmem_cache_free(ext4_inode_cachep, EXT4_I(inode));
}
