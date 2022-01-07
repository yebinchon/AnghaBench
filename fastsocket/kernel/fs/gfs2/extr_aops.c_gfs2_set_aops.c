
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_mapping; } ;
struct gfs2_inode {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 int BUG () ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 scalar_t__ gfs2_is_jdata (struct gfs2_inode*) ;
 scalar_t__ gfs2_is_ordered (struct gfs2_inode*) ;
 scalar_t__ gfs2_is_writeback (struct gfs2_inode*) ;
 int gfs2_jdata_aops ;
 int gfs2_ordered_aops ;
 int gfs2_writeback_aops ;

void gfs2_set_aops(struct inode *inode)
{
 struct gfs2_inode *ip = GFS2_I(inode);

 if (gfs2_is_writeback(ip))
  inode->i_mapping->a_ops = &gfs2_writeback_aops;
 else if (gfs2_is_ordered(ip))
  inode->i_mapping->a_ops = &gfs2_ordered_aops;
 else if (gfs2_is_jdata(ip))
  inode->i_mapping->a_ops = &gfs2_jdata_aops;
 else
  BUG();
}
