
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {scalar_t__ b_blocknr; } ;
typedef int handle_t ;


 int ML_ERROR ;
 int jbd2_journal_dirty_metadata (int *,struct buffer_head*) ;
 int mlog (int ,char*,unsigned long long) ;
 int mlog_entry (char*,unsigned long long) ;
 int mlog_exit (int) ;

int ocfs2_journal_dirty(handle_t *handle,
   struct buffer_head *bh)
{
 int status;

 mlog_entry("(bh->b_blocknr=%llu)\n",
     (unsigned long long)bh->b_blocknr);

 status = jbd2_journal_dirty_metadata(handle, bh);
 if (status < 0)
  mlog(ML_ERROR, "Could not dirty metadata buffer. "
       "(bh->b_blocknr=%llu)\n",
       (unsigned long long)bh->b_blocknr);

 mlog_exit(status);
 return status;
}
