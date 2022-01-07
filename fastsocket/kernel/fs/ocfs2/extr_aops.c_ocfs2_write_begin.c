
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
struct TYPE_2__ {int ip_alloc_sem; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int down_write (int *) ;
 int mlog_errno (int) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_write_begin_nolock (struct address_space*,int ,unsigned int,unsigned int,struct page**,void**,struct buffer_head*,int *) ;
 int up_write (int *) ;

__attribute__((used)) static int ocfs2_write_begin(struct file *file, struct address_space *mapping,
        loff_t pos, unsigned len, unsigned flags,
        struct page **pagep, void **fsdata)
{
 int ret;
 struct buffer_head *di_bh = ((void*)0);
 struct inode *inode = mapping->host;

 ret = ocfs2_inode_lock(inode, &di_bh, 1);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }
 down_write(&OCFS2_I(inode)->ip_alloc_sem);

 ret = ocfs2_write_begin_nolock(mapping, pos, len, flags, pagep,
           fsdata, di_bh, ((void*)0));
 if (ret) {
  mlog_errno(ret);
  goto out_fail;
 }

 brelse(di_bh);

 return 0;

out_fail:
 up_write(&OCFS2_I(inode)->ip_alloc_sem);

 brelse(di_bh);
 ocfs2_inode_unlock(inode, 1);

 return ret;
}
