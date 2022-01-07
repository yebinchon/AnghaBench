
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int EINVAL ;
 int OCFS2_ORPHAN_NAMELEN ;
 int mlog (int ,char*,char*,int) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int snprintf (char*,int,char*,long long) ;

__attribute__((used)) static int ocfs2_blkno_stringify(u64 blkno, char *name)
{
 int status, namelen;

 mlog_entry_void();

 namelen = snprintf(name, OCFS2_ORPHAN_NAMELEN + 1, "%016llx",
      (long long)blkno);
 if (namelen <= 0) {
  if (namelen)
   status = namelen;
  else
   status = -EINVAL;
  mlog_errno(status);
  goto bail;
 }
 if (namelen != OCFS2_ORPHAN_NAMELEN) {
  status = -EINVAL;
  mlog_errno(status);
  goto bail;
 }

 mlog(0, "built filename '%s' for orphan dir (len=%d)\n", name,
      namelen);

 status = 0;
bail:
 mlog_exit(status);
 return status;
}
