
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_security_xattr_info {int enable; int value_len; int value; int name; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int EOPNOTSUPP ;
 int XATTR_CREATE ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_init_acl (int *,struct inode*,struct inode*,int *,struct buffer_head*,int *,int *) ;
 int ocfs2_init_security_get (struct inode*,struct inode*,struct ocfs2_security_xattr_info*) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_xattr_security_set (struct inode*,int ,int ,int ,int ) ;

int ocfs2_init_security_and_acl(struct inode *dir,
    struct inode *inode)
{
 int ret = 0;
 struct buffer_head *dir_bh = ((void*)0);
 struct ocfs2_security_xattr_info si = {
  .enable = 1,
 };

 ret = ocfs2_init_security_get(inode, dir, &si);
 if (!ret) {
  ret = ocfs2_xattr_security_set(inode, si.name,
            si.value, si.value_len,
            XATTR_CREATE);
  if (ret) {
   mlog_errno(ret);
   goto leave;
  }
 } else if (ret != -EOPNOTSUPP) {
  mlog_errno(ret);
  goto leave;
 }

 ret = ocfs2_inode_lock(dir, &dir_bh, 0);
 if (ret) {
  mlog_errno(ret);
  goto leave;
 }

 ret = ocfs2_init_acl(((void*)0), inode, dir, ((void*)0), dir_bh, ((void*)0), ((void*)0));
 if (ret)
  mlog_errno(ret);

 ocfs2_inode_unlock(dir, 0);
 brelse(dir_bh);
leave:
 return ret;
}
