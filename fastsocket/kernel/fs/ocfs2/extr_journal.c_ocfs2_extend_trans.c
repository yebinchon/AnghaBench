
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int handle_t ;


 int BUG_ON (int) ;
 int jbd2_journal_extend (int *,int) ;
 int jbd2_journal_restart (int *,int) ;
 int mlog (int ,char*,...) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;

int ocfs2_extend_trans(handle_t *handle, int nblocks)
{
 int status;

 BUG_ON(!handle);
 BUG_ON(!nblocks);

 mlog_entry_void();

 mlog(0, "Trying to extend transaction by %d blocks\n", nblocks);




 status = jbd2_journal_extend(handle, nblocks);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }


 if (status > 0) {
  mlog(0,
       "jbd2_journal_extend failed, trying "
       "jbd2_journal_restart\n");
  status = jbd2_journal_restart(handle, nblocks);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }
 }

 status = 0;
bail:

 mlog_exit(status);
 return status;
}
