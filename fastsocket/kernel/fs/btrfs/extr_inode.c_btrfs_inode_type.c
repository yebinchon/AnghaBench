
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct inode {size_t i_mode; } ;


 size_t S_IFMT ;
 size_t S_SHIFT ;
 int * btrfs_type_by_mode ;

__attribute__((used)) static inline u8 btrfs_inode_type(struct inode *inode)
{
 return btrfs_type_by_mode[(inode->i_mode & S_IFMT) >> S_SHIFT];
}
