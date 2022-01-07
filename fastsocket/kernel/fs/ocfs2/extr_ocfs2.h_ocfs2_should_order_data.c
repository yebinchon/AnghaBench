
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; int i_mode; } ;
struct TYPE_2__ {int s_mount_opt; } ;


 int OCFS2_MOUNT_DATA_WRITEBACK ;
 TYPE_1__* OCFS2_SB (int ) ;
 int S_ISREG (int ) ;

__attribute__((used)) static inline int ocfs2_should_order_data(struct inode *inode)
{
 if (!S_ISREG(inode->i_mode))
  return 0;
 if (OCFS2_SB(inode->i_sb)->s_mount_opt & OCFS2_MOUNT_DATA_WRITEBACK)
  return 0;
 return 1;
}
