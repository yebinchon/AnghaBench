
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int slot_num; } ;
struct ocfs2_dir_lookup_result {int dummy; } ;
struct ocfs2_dinode {int i_orphaned_slot; int i_flags; } ;
struct inode {int i_nlink; int i_mode; int i_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int INODE_CACHE (struct inode*) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_ORPHANED_FL ;
 int OCFS2_ORPHAN_NAMELEN ;
 scalar_t__ S_ISDIR (int ) ;
 int __ocfs2_add_entry (int *,struct inode*,char*,int ,struct inode*,scalar_t__,struct buffer_head*,struct ocfs2_dir_lookup_result*) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le16 (int ) ;
 int le32_add_cpu (int *,int ) ;
 int mlog (int ,char*,unsigned long long,int ) ;
 int mlog_entry (char*,int ) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_add_links_count (struct ocfs2_dinode*,int) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;
 int ocfs2_read_links_count (struct ocfs2_dinode*) ;

__attribute__((used)) static int ocfs2_orphan_add(struct ocfs2_super *osb,
       handle_t *handle,
       struct inode *inode,
       struct ocfs2_dinode *fe,
       char *name,
       struct ocfs2_dir_lookup_result *lookup,
       struct inode *orphan_dir_inode)
{
 struct buffer_head *orphan_dir_bh = ((void*)0);
 int status = 0;
 struct ocfs2_dinode *orphan_fe;

 mlog_entry("(inode->i_ino = %lu)\n", inode->i_ino);

 status = ocfs2_read_inode_block(orphan_dir_inode, &orphan_dir_bh);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 status = ocfs2_journal_access_di(handle,
      INODE_CACHE(orphan_dir_inode),
      orphan_dir_bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }



 orphan_fe = (struct ocfs2_dinode *) orphan_dir_bh->b_data;
 if (S_ISDIR(inode->i_mode))
  ocfs2_add_links_count(orphan_fe, 1);
 orphan_dir_inode->i_nlink = ocfs2_read_links_count(orphan_fe);

 status = ocfs2_journal_dirty(handle, orphan_dir_bh);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 status = __ocfs2_add_entry(handle, orphan_dir_inode, name,
       OCFS2_ORPHAN_NAMELEN, inode,
       OCFS2_I(inode)->ip_blkno,
       orphan_dir_bh, lookup);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 le32_add_cpu(&fe->i_flags, OCFS2_ORPHANED_FL);




 fe->i_orphaned_slot = cpu_to_le16(osb->slot_num);

 mlog(0, "Inode %llu orphaned in slot %d\n",
      (unsigned long long)OCFS2_I(inode)->ip_blkno, osb->slot_num);

leave:
 brelse(orphan_dir_bh);

 mlog_exit(status);
 return status;
}
