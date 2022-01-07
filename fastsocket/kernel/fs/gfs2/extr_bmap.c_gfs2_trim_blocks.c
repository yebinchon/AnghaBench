
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int i_size; } ;


 int WARN_ON (int) ;
 int do_shrink (struct inode*,int ,int ) ;

void gfs2_trim_blocks(struct inode *inode)
{
 u64 size = inode->i_size;
 int ret;

 ret = do_shrink(inode, size, size);
 WARN_ON(ret != 0);
}
