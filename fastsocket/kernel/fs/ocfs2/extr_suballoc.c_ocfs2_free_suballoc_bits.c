
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_group_desc {int bg_chain; int bg_bits; } ;
struct TYPE_8__ {int i_used; } ;
struct TYPE_9__ {TYPE_3__ bitmap1; } ;
struct ocfs2_chain_list {TYPE_2__* cl_recs; } ;
struct TYPE_6__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {TYPE_4__ id1; TYPE_1__ id2; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_10__ {scalar_t__ ip_blkno; } ;
struct TYPE_7__ {int c_free; } ;


 int BUG_ON (int) ;
 int INODE_CACHE (struct inode*) ;
 TYPE_5__* OCFS2_I (struct inode*) ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (scalar_t__) ;
 size_t le16_to_cpu (int ) ;
 int le32_add_cpu (int *,unsigned int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long,unsigned int,unsigned long long,unsigned int) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 unsigned int ocfs2_bits_per_group (struct ocfs2_chain_list*) ;
 int ocfs2_block_group_clear_bits (int *,struct inode*,struct ocfs2_group_desc*,struct buffer_head*,unsigned int,unsigned int) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_read_group_descriptor (struct inode*,struct ocfs2_dinode*,scalar_t__,struct buffer_head**) ;

int ocfs2_free_suballoc_bits(handle_t *handle,
        struct inode *alloc_inode,
        struct buffer_head *alloc_bh,
        unsigned int start_bit,
        u64 bg_blkno,
        unsigned int count)
{
 int status = 0;
 u32 tmp_used;
 struct ocfs2_dinode *fe = (struct ocfs2_dinode *) alloc_bh->b_data;
 struct ocfs2_chain_list *cl = &fe->id2.i_chain;
 struct buffer_head *group_bh = ((void*)0);
 struct ocfs2_group_desc *group;

 mlog_entry_void();






 BUG_ON(!OCFS2_IS_VALID_DINODE(fe));
 BUG_ON((count + start_bit) > ocfs2_bits_per_group(cl));

 mlog(0, "%llu: freeing %u bits from group %llu, starting at %u\n",
      (unsigned long long)OCFS2_I(alloc_inode)->ip_blkno, count,
      (unsigned long long)bg_blkno, start_bit);

 status = ocfs2_read_group_descriptor(alloc_inode, fe, bg_blkno,
          &group_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }
 group = (struct ocfs2_group_desc *) group_bh->b_data;

 BUG_ON((count + start_bit) > le16_to_cpu(group->bg_bits));

 status = ocfs2_block_group_clear_bits(handle, alloc_inode,
           group, group_bh,
           start_bit, count);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_journal_access_di(handle, INODE_CACHE(alloc_inode),
      alloc_bh, OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 le32_add_cpu(&cl->cl_recs[le16_to_cpu(group->bg_chain)].c_free,
       count);
 tmp_used = le32_to_cpu(fe->id1.bitmap1.i_used);
 fe->id1.bitmap1.i_used = cpu_to_le32(tmp_used - count);

 status = ocfs2_journal_dirty(handle, alloc_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

bail:
 brelse(group_bh);

 mlog_exit(status);
 return status;
}
