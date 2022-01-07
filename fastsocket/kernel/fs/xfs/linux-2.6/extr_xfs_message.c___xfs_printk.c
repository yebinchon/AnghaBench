
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {scalar_t__ m_fsname; } ;
struct va_format {int dummy; } ;


 int printk (char*,char const*,struct va_format*,...) ;

__attribute__((used)) static void
__xfs_printk(
 const char *level,
 const struct xfs_mount *mp,
 struct va_format *vaf)
{
 if (mp && mp->m_fsname) {
  printk("%sXFS (%s): %pV\n", level, mp->m_fsname, vaf);
  return;
 }
 printk("%sXFS: %pV\n", level, vaf);
}
