
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext4_xattr_info {int name; int name_index; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct TYPE_4__ {int not_found; scalar_t__ base; void* end; scalar_t__ here; scalar_t__ first; } ;
struct ext4_xattr_ibody_find {TYPE_1__ s; int iloc; } ;
struct ext4_inode {int dummy; } ;
struct TYPE_6__ {scalar_t__ i_extra_isize; } ;
struct TYPE_5__ {int s_inode_size; } ;


 int ENODATA ;
 TYPE_3__* EXT4_I (struct inode*) ;
 TYPE_2__* EXT4_SB (int ) ;
 int EXT4_STATE_XATTR ;
 scalar_t__ IFIRST (struct ext4_xattr_ibody_header*) ;
 struct ext4_xattr_ibody_header* IHDR (struct inode*,struct ext4_inode*) ;
 struct ext4_inode* ext4_raw_inode (int *) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int ext4_xattr_check_names (scalar_t__,void*) ;
 int ext4_xattr_find_entry (scalar_t__*,int ,int ,void*,int ) ;

__attribute__((used)) static int
ext4_xattr_ibody_find(struct inode *inode, struct ext4_xattr_info *i,
        struct ext4_xattr_ibody_find *is)
{
 struct ext4_xattr_ibody_header *header;
 struct ext4_inode *raw_inode;
 int error;

 if (EXT4_I(inode)->i_extra_isize == 0)
  return 0;
 raw_inode = ext4_raw_inode(&is->iloc);
 header = IHDR(inode, raw_inode);
 is->s.base = is->s.first = IFIRST(header);
 is->s.here = is->s.first;
 is->s.end = (void *)raw_inode + EXT4_SB(inode->i_sb)->s_inode_size;
 if (ext4_test_inode_state(inode, EXT4_STATE_XATTR)) {
  error = ext4_xattr_check_names(IFIRST(header), is->s.end);
  if (error)
   return error;

  error = ext4_xattr_find_entry(&is->s.here, i->name_index,
           i->name, is->s.end -
           (void *)is->s.base, 0);
  if (error && error != -ENODATA)
   return error;
  is->s.not_found = error;
 }
 return 0;
}
