
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct TYPE_6__ {int i_used; } ;
struct TYPE_7__ {TYPE_2__ bitmap1; } ;
struct TYPE_5__ {int i_chain; } ;
struct ocfs2_dinode {TYPE_3__ id1; TYPE_1__ id2; } ;
struct ocfs2_chain_list {TYPE_4__* cl_recs; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_8__ {int c_free; } ;


 int INODE_CACHE (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int cpu_to_le32 (scalar_t__) ;
 int le32_add_cpu (int *,scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;

__attribute__((used)) static int ocfs2_alloc_dinode_update_counts(struct inode *inode,
           handle_t *handle,
           struct buffer_head *di_bh,
           u32 num_bits,
           u16 chain)
{
 int ret;
 u32 tmp_used;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *) di_bh->b_data;
 struct ocfs2_chain_list *cl = (struct ocfs2_chain_list *) &di->id2.i_chain;

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(inode), di_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 tmp_used = le32_to_cpu(di->id1.bitmap1.i_used);
 di->id1.bitmap1.i_used = cpu_to_le32(num_bits + tmp_used);
 le32_add_cpu(&cl->cl_recs[chain].c_free, -num_bits);

 ret = ocfs2_journal_dirty(handle, di_bh);
 if (ret < 0)
  mlog_errno(ret);

out:
 return ret;
}
