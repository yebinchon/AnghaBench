
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zs_mode; scalar_t__* zs_ctime; } ;
typedef TYPE_1__ zfs_stat_t ;
typedef int longlong_t ;
struct TYPE_7__ {scalar_t__ classify; scalar_t__ timestamped; } ;
typedef TYPE_2__ differ_info_t ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int print_cmn (int *,TYPE_2__*,char const*) ;
 int print_what (int *,int ) ;

__attribute__((used)) static void
print_file(FILE *fp, differ_info_t *di, char type, const char *file,
    zfs_stat_t *isb)
{
 if (di->timestamped)
  (void) fprintf(fp, "%10lld.%09lld\t",
      (longlong_t)isb->zs_ctime[0],
      (longlong_t)isb->zs_ctime[1]);
 (void) fprintf(fp, "%c\t", type);
 if (di->classify) {
  print_what(fp, isb->zs_mode);
  (void) fprintf(fp, "\t");
 }
 print_cmn(fp, di, file);
 (void) fprintf(fp, "\n");
}
