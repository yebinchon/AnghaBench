
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent_header {int dummy; } ;
struct buffer_head {int dummy; } ;


 scalar_t__ buffer_verified (struct buffer_head*) ;
 int ext4_ext_check (struct inode*,struct ext4_extent_header*,int) ;
 int set_buffer_verified (struct buffer_head*) ;

__attribute__((used)) static int __ext4_ext_check_block(const char *function, unsigned int line,
      struct inode *inode,
      struct ext4_extent_header *eh,
      int depth,
      struct buffer_head *bh)
{
 int ret;

 if (buffer_verified(bh))
  return 0;
 ret = ext4_ext_check(inode, eh, depth);
 if (ret)
  return ret;
 set_buffer_verified(bh);
 return ret;
}
