
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_triggers {int ot_triggers; } ;
struct ocfs2_super {int journal; } ;
struct ocfs2_caching_info {int ci_ops; } ;
struct buffer_head {scalar_t__ b_blocknr; int b_size; } ;
typedef int handle_t ;


 int BUG () ;
 int BUG_ON (int) ;
 int EINVAL ;
 int ML_ERROR ;



 struct ocfs2_super* OCFS2_SB (int ) ;
 int buffer_uptodate (struct buffer_head*) ;
 int jbd2_journal_get_undo_access (int *,struct buffer_head*) ;
 int jbd2_journal_get_write_access (int *,struct buffer_head*) ;
 int jbd2_journal_set_triggers (struct buffer_head*,int *) ;
 int mlog (int ,char*,...) ;
 int mlog_entry (char*,unsigned long long,int,char*,int ) ;
 int mlog_exit (int) ;
 scalar_t__ ocfs2_meta_ecc (struct ocfs2_super*) ;
 int ocfs2_metadata_cache_get_super (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_io_lock (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_io_unlock (struct ocfs2_caching_info*) ;
 int ocfs2_set_ci_lock_trans (int ,struct ocfs2_caching_info*) ;

__attribute__((used)) static int __ocfs2_journal_access(handle_t *handle,
      struct ocfs2_caching_info *ci,
      struct buffer_head *bh,
      struct ocfs2_triggers *triggers,
      int type)
{
 int status;
 struct ocfs2_super *osb =
  OCFS2_SB(ocfs2_metadata_cache_get_super(ci));

 BUG_ON(!ci || !ci->ci_ops);
 BUG_ON(!handle);
 BUG_ON(!bh);

 mlog_entry("bh->b_blocknr=%llu, type=%d (\"%s\"), bh->b_size = %zu\n",
     (unsigned long long)bh->b_blocknr, type,
     (type == 130) ?
     "OCFS2_JOURNAL_ACCESS_CREATE" :
     "OCFS2_JOURNAL_ACCESS_WRITE",
     bh->b_size);


 if (!buffer_uptodate(bh)) {
  mlog(ML_ERROR, "giving me a buffer that's not uptodate!\n");
  mlog(ML_ERROR, "b_blocknr=%llu\n",
       (unsigned long long)bh->b_blocknr);
  BUG();
 }







 ocfs2_set_ci_lock_trans(osb->journal, ci);

 ocfs2_metadata_cache_io_lock(ci);
 switch (type) {
 case 130:
 case 128:
  status = jbd2_journal_get_write_access(handle, bh);
  break;

 case 129:
  status = jbd2_journal_get_undo_access(handle, bh);
  break;

 default:
  status = -EINVAL;
  mlog(ML_ERROR, "Uknown access type!\n");
 }
 if (!status && ocfs2_meta_ecc(osb) && triggers)
  jbd2_journal_set_triggers(bh, &triggers->ot_triggers);
 ocfs2_metadata_cache_io_unlock(ci);

 if (status < 0)
  mlog(ML_ERROR, "Error %d getting %d access to buffer!\n",
       status, type);

 mlog_exit(status);
 return status;
}
