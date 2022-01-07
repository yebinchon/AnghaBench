
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;
typedef int inst_t ;


 int XFS_PTAG_ERROR_REPORT ;
 int xfs_alert_tag (struct xfs_mount*,int ,char*,char const*,int,char const*,int *) ;
 int xfs_error_level ;
 int xfs_stack_trace () ;

void
xfs_error_report(
 const char *tag,
 int level,
 struct xfs_mount *mp,
 const char *filename,
 int linenum,
 inst_t *ra)
{
 if (level <= xfs_error_level) {
  xfs_alert_tag(mp, XFS_PTAG_ERROR_REPORT,
  "Internal error %s at line %d of file %s.  Caller 0x%p\n",
       tag, linenum, filename, ra);

  xfs_stack_trace();
 }
}
