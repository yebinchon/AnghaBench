
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_xattr_ibody_header {scalar_t__ h_magic; } ;
struct ext4_xattr_entry {int dummy; } ;
struct ext4_inode {int dummy; } ;
struct ext4_iloc {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {unsigned int i_extra_isize; } ;


 int EXT4_GOOD_OLD_INODE_SIZE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_STATE_XATTR ;
 int EXT4_XATTR_MAGIC ;
 struct ext4_xattr_entry* IFIRST (struct ext4_xattr_ibody_header*) ;
 struct ext4_xattr_ibody_header* IHDR (struct inode*,struct ext4_inode*) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int ext4_expand_extra_isize_ea (struct inode*,unsigned int,struct ext4_inode*,int *) ;
 struct ext4_inode* ext4_raw_inode (struct ext4_iloc*) ;
 int ext4_test_inode_state (struct inode*,int ) ;
 int memset (void*,int ,unsigned int) ;

__attribute__((used)) static int ext4_expand_extra_isize(struct inode *inode,
       unsigned int new_extra_isize,
       struct ext4_iloc iloc,
       handle_t *handle)
{
 struct ext4_inode *raw_inode;
 struct ext4_xattr_ibody_header *header;
 struct ext4_xattr_entry *entry;

 if (EXT4_I(inode)->i_extra_isize >= new_extra_isize)
  return 0;

 raw_inode = ext4_raw_inode(&iloc);

 header = IHDR(inode, raw_inode);
 entry = IFIRST(header);


 if (!ext4_test_inode_state(inode, EXT4_STATE_XATTR) ||
     header->h_magic != cpu_to_le32(EXT4_XATTR_MAGIC)) {
  memset((void *)raw_inode + EXT4_GOOD_OLD_INODE_SIZE, 0,
   new_extra_isize);
  EXT4_I(inode)->i_extra_isize = new_extra_isize;
  return 0;
 }


 return ext4_expand_extra_isize_ea(inode, new_extra_isize,
       raw_inode, handle);
}
