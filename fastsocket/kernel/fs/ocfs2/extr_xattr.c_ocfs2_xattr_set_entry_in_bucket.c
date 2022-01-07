
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct ocfs2_xattr_search {TYPE_1__* bucket; } ;
struct ocfs2_xattr_info {int name_index; scalar_t__ value_len; } ;
struct inode {int dummy; } ;
typedef int handle_t ;
struct TYPE_6__ {int * bu_bhs; } ;


 int OCFS2_JOURNAL_ACCESS_WRITE ;
 scalar_t__ bucket_blkno (TYPE_1__*) ;
 int mlog (int ,char*,unsigned long,int ,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_read_xattr_bucket (TYPE_1__*,scalar_t__) ;
 int ocfs2_xattr_bucket_journal_access (int *,TYPE_1__*,int ) ;
 int ocfs2_xattr_bucket_journal_dirty (int *,TYPE_1__*) ;
 int ocfs2_xattr_bucket_relse (TYPE_1__*) ;
 int ocfs2_xattr_set_entry_normal (struct inode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,int ,int) ;

__attribute__((used)) static int ocfs2_xattr_set_entry_in_bucket(struct inode *inode,
        handle_t *handle,
        struct ocfs2_xattr_info *xi,
        struct ocfs2_xattr_search *xs,
        u32 name_hash,
        int local)
{
 int ret;
 u64 blkno;

 mlog(0, "Set xattr entry len = %lu index = %d in bucket %llu\n",
      (unsigned long)xi->value_len, xi->name_index,
      (unsigned long long)bucket_blkno(xs->bucket));

 if (!xs->bucket->bu_bhs[1]) {
  blkno = bucket_blkno(xs->bucket);
  ocfs2_xattr_bucket_relse(xs->bucket);
  ret = ocfs2_read_xattr_bucket(xs->bucket, blkno);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 ret = ocfs2_xattr_bucket_journal_access(handle, xs->bucket,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 ocfs2_xattr_set_entry_normal(inode, xi, xs, name_hash, local);
 ocfs2_xattr_bucket_journal_dirty(handle, xs->bucket);

out:
 return ret;
}
