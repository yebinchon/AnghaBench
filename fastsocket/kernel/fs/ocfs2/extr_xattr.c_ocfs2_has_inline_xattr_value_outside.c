
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_header {int * xh_entries; int xh_count; } ;
struct ocfs2_dinode {int i_xattr_inline_size; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_blocksize; } ;


 int le16_to_cpu (int ) ;
 int ocfs2_xattr_is_local (int *) ;

int ocfs2_has_inline_xattr_value_outside(struct inode *inode,
      struct ocfs2_dinode *di)
{
 struct ocfs2_xattr_header *xh;
 int i;

 xh = (struct ocfs2_xattr_header *)
   ((void *)di + inode->i_sb->s_blocksize -
   le16_to_cpu(di->i_xattr_inline_size));

 for (i = 0; i < le16_to_cpu(xh->xh_count); i++)
  if (!ocfs2_xattr_is_local(&xh->xh_entries[i]))
   return 1;

 return 0;
}
