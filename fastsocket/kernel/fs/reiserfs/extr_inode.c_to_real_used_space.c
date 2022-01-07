
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct inode {int i_size; int i_mode; } ;
typedef int loff_t ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ real_space_diff (struct inode*,int) ;

__attribute__((used)) static inline loff_t to_real_used_space(struct inode *inode, ulong blocks,
     int sd_size)
{
 if (S_ISLNK(inode->i_mode) || S_ISDIR(inode->i_mode)) {
  return inode->i_size +
      (loff_t) (real_space_diff(inode, sd_size));
 }
 return ((loff_t) real_space_diff(inode, sd_size)) +
     (((loff_t) blocks) << 9);
}
