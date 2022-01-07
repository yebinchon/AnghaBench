
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct zfs_stat {int dummy; } ;
struct TYPE_5__ {scalar_t__ zerr; int fromsnap; } ;
typedef TYPE_1__ differ_info_t ;
typedef int FILE ;


 scalar_t__ ESTALE ;
 int ZDIFF_REMOVED ;
 scalar_t__ get_stats_for_obj (TYPE_1__*,int ,int ,char*,int,struct zfs_stat*) ;
 int print_file (int *,TYPE_1__*,int ,char*,struct zfs_stat*) ;

__attribute__((used)) static int
describe_free(FILE *fp, differ_info_t *di, uint64_t object, char *namebuf,
    int maxlen)
{
 struct zfs_stat sb;

 if (get_stats_for_obj(di, di->fromsnap, object, namebuf,
     maxlen, &sb) != 0) {
  return (-1);
 }

 if (di->zerr == ESTALE) {
  di->zerr = 0;
  return (0);
 }

 print_file(fp, di, ZDIFF_REMOVED, namebuf, &sb);
 return (0);
}
