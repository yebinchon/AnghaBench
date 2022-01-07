
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {scalar_t__ i_size; int i_mode; } ;


 int BUG_ON (int) ;
 int GFS2_I (struct inode*) ;
 int S_ISREG (int ) ;
 int do_grow (struct inode*,scalar_t__) ;
 int do_shrink (struct inode*,scalar_t__,scalar_t__) ;
 int get_write_access (struct inode*) ;
 int gfs2_rs_alloc (int ) ;
 int inode_newsize_ok (struct inode*,scalar_t__) ;
 int put_write_access (struct inode*) ;

int gfs2_setattr_size(struct inode *inode, u64 newsize)
{
 int ret;
 u64 oldsize;

 BUG_ON(!S_ISREG(inode->i_mode));

 ret = inode_newsize_ok(inode, newsize);
 if (ret)
  return ret;

 ret = get_write_access(inode);
 if (ret)
  return ret;

 ret = gfs2_rs_alloc(GFS2_I(inode));
 if (ret)
  goto out;

 oldsize = inode->i_size;
 if (newsize >= oldsize) {
  ret = do_grow(inode, newsize);
  goto out;
 }

 ret = do_shrink(inode, oldsize, newsize);
out:
 put_write_access(inode);
 return ret;
}
