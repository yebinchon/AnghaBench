
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct exofs_i_info {scalar_t__* i_data; } ;


 scalar_t__ S_ISLNK (int ) ;
 struct exofs_i_info* exofs_i (struct inode*) ;

__attribute__((used)) static inline int exofs_inode_is_fast_symlink(struct inode *inode)
{
 struct exofs_i_info *oi = exofs_i(inode);

 return S_ISLNK(inode->i_mode) && (oi->i_data[0] != 0);
}
