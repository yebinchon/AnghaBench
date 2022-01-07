
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int O_NONBLOCK ;
 int O_WRONLY ;
 int S_ISREG (int ) ;
 int break_lease (struct inode*,int) ;

__attribute__((used)) static int nfsd_break_lease(struct inode *inode)
{
 if (!S_ISREG(inode->i_mode))
  return 0;
 return break_lease(inode, O_WRONLY | O_NONBLOCK);
}
