
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned long i_ino; } ;
struct gfs2_skip_data {scalar_t__ no_addr; scalar_t__ skipped; } ;
struct gfs2_inode {scalar_t__ i_no_addr; } ;


 int ENOENT ;
 struct gfs2_inode* GFS2_I (struct inode*) ;

__attribute__((used)) static int iget_set(struct inode *inode, void *opaque)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_skip_data *data = opaque;

 if (data->skipped)
  return -ENOENT;
 inode->i_ino = (unsigned long)(data->no_addr);
 ip->i_no_addr = data->no_addr;
 return 0;
}
