
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_xattr_search {int first; } ;
struct ext4_xattr_info {int dummy; } ;
struct ext4_xattr_ibody_header {void* h_magic; } ;
struct ext4_xattr_ibody_find {int iloc; struct ext4_xattr_search s; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ i_extra_isize; } ;


 int ENOSPC ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_STATE_XATTR ;
 int EXT4_XATTR_MAGIC ;
 struct ext4_xattr_ibody_header* IHDR (struct inode*,int ) ;
 int IS_LAST_ENTRY (int ) ;
 void* cpu_to_le32 (int ) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_raw_inode (int *) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_xattr_set_entry (struct ext4_xattr_info*,struct ext4_xattr_search*) ;

__attribute__((used)) static int
ext4_xattr_ibody_set(handle_t *handle, struct inode *inode,
       struct ext4_xattr_info *i,
       struct ext4_xattr_ibody_find *is)
{
 struct ext4_xattr_ibody_header *header;
 struct ext4_xattr_search *s = &is->s;
 int error;

 if (EXT4_I(inode)->i_extra_isize == 0)
  return -ENOSPC;
 error = ext4_xattr_set_entry(i, s);
 if (error)
  return error;
 header = IHDR(inode, ext4_raw_inode(&is->iloc));
 if (!IS_LAST_ENTRY(s->first)) {
  header->h_magic = cpu_to_le32(EXT4_XATTR_MAGIC);
  ext4_set_inode_state(inode, EXT4_STATE_XATTR);
 } else {
  header->h_magic = cpu_to_le32(0);
  ext4_clear_inode_state(inode, EXT4_STATE_XATTR);
 }
 return 0;
}
