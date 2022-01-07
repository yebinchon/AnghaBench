
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {struct inode** system_inodes; } ;
struct inode {int dummy; } ;


 int BUG_ON (int) ;
 struct inode* _ocfs2_get_system_file_inode (struct ocfs2_super*,int,int ) ;
 struct inode* igrab (struct inode*) ;
 scalar_t__ is_in_system_inode_array (struct ocfs2_super*,int,int ) ;

struct inode *ocfs2_get_system_file_inode(struct ocfs2_super *osb,
       int type,
       u32 slot)
{
 struct inode *inode = ((void*)0);
 struct inode **arr = ((void*)0);


 if (is_in_system_inode_array(osb, type, slot))
  arr = &(osb->system_inodes[type]);

 if (arr && ((inode = *arr) != ((void*)0))) {

  inode = igrab(inode);
  BUG_ON(!inode);

  return inode;
 }


 inode = _ocfs2_get_system_file_inode(osb, type, slot);


 if (arr && inode) {
  *arr = igrab(inode);
  BUG_ON(!*arr);
 }
 return inode;
}
