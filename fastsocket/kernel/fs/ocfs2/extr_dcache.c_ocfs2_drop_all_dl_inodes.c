
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;


 int __ocfs2_drop_dl_inodes (struct ocfs2_super*,int) ;

void ocfs2_drop_all_dl_inodes(struct ocfs2_super *osb)
{
 __ocfs2_drop_dl_inodes(osb, -1);
}
