
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_type; int dq_id; } ;


 int mlog_entry (char*,int ,int ) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_create_local_dquot (struct dquot*) ;
 int ocfs2_global_read_dquot (struct dquot*) ;

__attribute__((used)) static int ocfs2_local_read_dquot(struct dquot *dquot)
{
 int status;

 mlog_entry("id=%u, type=%d\n", dquot->dq_id, dquot->dq_type);

 status = ocfs2_global_read_dquot(dquot);
 if (status < 0) {
  mlog_errno(status);
  goto out_err;
 }


 status = ocfs2_create_local_dquot(dquot);
 if (status < 0) {
  mlog_errno(status);
  goto out_err;
 }
 mlog_exit(0);
 return 0;
out_err:
 mlog_exit(status);
 return status;
}
