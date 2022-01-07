
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_inode; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 scalar_t__ i_size_read (int *) ;

__attribute__((used)) static int gfs2_ok_for_dio(struct gfs2_inode *ip, int rw, loff_t offset)
{





 if (gfs2_is_stuffed(ip))
  return 0;

 if (offset >= i_size_read(&ip->i_inode))
  return 0;
 return 1;
}
