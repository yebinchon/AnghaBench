
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_entry {int e_value_offs; int e_value_size; } ;
struct ext4_inode {int dummy; } ;
struct ext4_iloc {int bh; } ;
struct TYPE_2__ {int s_inode_size; } ;


 int ENODATA ;
 int ERANGE ;
 TYPE_1__* EXT4_SB (int ) ;
 int EXT4_STATE_XATTR ;
 struct ext4_xattr_entry* IFIRST (struct ext4_xattr_ibody_header*) ;
 struct ext4_xattr_ibody_header* IHDR (struct inode*,struct ext4_inode*) ;
 int brelse (int ) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 struct ext4_inode* ext4_raw_inode (struct ext4_iloc*) ;
 int ext4_test_inode_state (struct inode*,int ) ;
 int ext4_xattr_check_names (struct ext4_xattr_entry*,void*) ;
 int ext4_xattr_find_entry (struct ext4_xattr_entry**,int,char const*,int,int ) ;
 int le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static int
ext4_xattr_ibody_get(struct inode *inode, int name_index, const char *name,
       void *buffer, size_t buffer_size)
{
 struct ext4_xattr_ibody_header *header;
 struct ext4_xattr_entry *entry;
 struct ext4_inode *raw_inode;
 struct ext4_iloc iloc;
 size_t size;
 void *end;
 int error;

 if (!ext4_test_inode_state(inode, EXT4_STATE_XATTR))
  return -ENODATA;
 error = ext4_get_inode_loc(inode, &iloc);
 if (error)
  return error;
 raw_inode = ext4_raw_inode(&iloc);
 header = IHDR(inode, raw_inode);
 entry = IFIRST(header);
 end = (void *)raw_inode + EXT4_SB(inode->i_sb)->s_inode_size;
 error = ext4_xattr_check_names(entry, end);
 if (error)
  goto cleanup;
 error = ext4_xattr_find_entry(&entry, name_index, name,
          end - (void *)entry, 0);
 if (error)
  goto cleanup;
 size = le32_to_cpu(entry->e_value_size);
 if (buffer) {
  error = -ERANGE;
  if (size > buffer_size)
   goto cleanup;
  memcpy(buffer, (void *)IFIRST(header) +
         le16_to_cpu(entry->e_value_offs), size);
 }
 error = size;

cleanup:
 brelse(iloc.bh);
 return error;
}
