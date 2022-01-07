
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* d_dev; char* d_mountpt; char* d_fstype; char* d_opts; int d_freq; int d_passno; } ;
typedef TYPE_1__ disk_fs ;
typedef int FILE ;


 int fprintf (int *,char*,char*,char*,char*,char*,int,int) ;

__attribute__((used)) static void
write_generic_dkfstab(FILE *ef, disk_fs *dp)
{
  fprintf(ef, "%s %s %s %s %d %d\n",
   dp->d_dev,
   dp->d_mountpt,
   dp->d_fstype,
   dp->d_opts,
   dp->d_freq,
   dp->d_passno);
}
