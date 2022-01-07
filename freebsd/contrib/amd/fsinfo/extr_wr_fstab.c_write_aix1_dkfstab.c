
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* d_mountpt; char* d_dev; char* d_fstype; char* d_log; char* d_opts; TYPE_1__* d_host; } ;
typedef TYPE_2__ disk_fs ;
struct TYPE_4__ {int h_hostname; } ;
typedef int FILE ;


 int XFREE (char*) ;
 int fprintf (int *,char*,char*,char*,char*,char*,char*,char*,char*) ;
 char* strchr (char*,char) ;
 char* xstrdup (int ) ;

__attribute__((used)) static void
write_aix1_dkfstab(FILE *ef, disk_fs *dp)
{
  char *hp = xstrdup(dp->d_host->h_hostname);
  char *p = strchr(hp, '.');

  if (p)
    *p = '\0';

  fprintf(ef, "\n%s:\n\tdev = %s\n\tvfs = %s\n\ttype = %s\n\tlog = %s\n\tvol = %s\n\topts = %s\n\tmount = true\n\tcheck = true\n\tfree = false\n",
   dp->d_mountpt,
   dp->d_dev,
   dp->d_fstype,
   dp->d_fstype,
   dp->d_log,
   dp->d_mountpt,
   dp->d_opts);
  XFREE(hp);
}
