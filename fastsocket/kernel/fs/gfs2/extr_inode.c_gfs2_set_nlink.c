
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct inode {scalar_t__ i_nlink; } ;


 int clear_nlink (struct inode*) ;

__attribute__((used)) static void gfs2_set_nlink(struct inode *inode, u32 nlink)
{





 if ((inode->i_nlink != nlink) && (inode->i_nlink != 0)) {
  if (nlink == 0)
   clear_nlink(inode);
  else
   inode->i_nlink = nlink;
 }
}
