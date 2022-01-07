
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_inode {int dummy; } ;
typedef int handle_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int
ext4_expand_extra_isize_ea(struct inode *inode, int new_extra_isize,
       struct ext4_inode *raw_inode, handle_t *handle)
{
 return -EOPNOTSUPP;
}
