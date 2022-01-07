
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {scalar_t__ bitmap_blkno; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;

__attribute__((used)) static inline int ocfs2_is_cluster_bitmap(struct inode *inode)
{
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 return osb->bitmap_blkno == OCFS2_I(inode)->ip_blkno;
}
