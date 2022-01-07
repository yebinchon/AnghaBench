
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vfsmount {int mnt_sb; } ;
struct seq_file {int dummy; } ;
struct TYPE_9__ {scalar_t__ uid; scalar_t__ gid; scalar_t__ fmask; scalar_t__ dmask; int on_errors; scalar_t__ mft_zone_multiplier; TYPE_1__* nls_map; } ;
typedef TYPE_2__ ntfs_volume ;
struct TYPE_10__ {int val; scalar_t__ str; } ;
struct TYPE_8__ {scalar_t__ charset; } ;


 TYPE_2__* NTFS_SB (int ) ;
 scalar_t__ NVolCaseSensitive (TYPE_2__*) ;
 scalar_t__ NVolShowSystemFiles (TYPE_2__*) ;
 int NVolSparseEnabled (TYPE_2__*) ;
 TYPE_3__* on_errors_arr ;
 int seq_printf (struct seq_file*,char*,...) ;

int ntfs_show_options(struct seq_file *sf, struct vfsmount *mnt)
{
 ntfs_volume *vol = NTFS_SB(mnt->mnt_sb);
 int i;

 seq_printf(sf, ",uid=%i", vol->uid);
 seq_printf(sf, ",gid=%i", vol->gid);
 if (vol->fmask == vol->dmask)
  seq_printf(sf, ",umask=0%o", vol->fmask);
 else {
  seq_printf(sf, ",fmask=0%o", vol->fmask);
  seq_printf(sf, ",dmask=0%o", vol->dmask);
 }
 seq_printf(sf, ",nls=%s", vol->nls_map->charset);
 if (NVolCaseSensitive(vol))
  seq_printf(sf, ",case_sensitive");
 if (NVolShowSystemFiles(vol))
  seq_printf(sf, ",show_sys_files");
 if (!NVolSparseEnabled(vol))
  seq_printf(sf, ",disable_sparse");
 for (i = 0; on_errors_arr[i].val; i++) {
  if (on_errors_arr[i].val & vol->on_errors)
   seq_printf(sf, ",errors=%s", on_errors_arr[i].str);
 }
 seq_printf(sf, ",mft_zone_multiplier=%i", vol->mft_zone_multiplier);
 return 0;
}
