
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;
typedef int inst_t ;


 int xfs_alert (struct xfs_mount*,char*) ;
 int xfs_error_level ;
 int xfs_error_report (char const*,int,struct xfs_mount*,char const*,int,int *) ;
 int xfs_hex_dump (void*,int) ;

void
xfs_corruption_error(
 const char *tag,
 int level,
 struct xfs_mount *mp,
 void *p,
 const char *filename,
 int linenum,
 inst_t *ra)
{
 if (level <= xfs_error_level)
  xfs_hex_dump(p, 16);
 xfs_error_report(tag, level, mp, filename, linenum, ra);
 xfs_alert(mp, "Corruption detected. Unmount and run xfs_repair");
}
