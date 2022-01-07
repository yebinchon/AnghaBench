
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* zfs_name; TYPE_6__* zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_9__ {int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint64_t ;
struct TYPE_10__ {char* tosnap; char* fromsnap; void* err; void* seento; void* seenfrom; scalar_t__ replicate; scalar_t__ prevsnap_obj; void** prevsnap; } ;
typedef TYPE_3__ send_dump_data_t ;
typedef void* boolean_t ;
struct TYPE_11__ {int libzfs_fd; } ;


 void* B_FALSE ;
 void* B_TRUE ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_OBJSET_STATS ;
 char* dgettext (int ,char*) ;
 int dump_snapshot ;
 int fprintf (int ,char*,char*,char*,...) ;
 int get_snap_txg (TYPE_6__*,char*,char*) ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int stderr ;
 int zfs_iter_snapshots_sorted (TYPE_1__*,int ,void*,int ,int ) ;

__attribute__((used)) static int
dump_filesystem(zfs_handle_t *zhp, void *arg)
{
 int rv = 0;
 uint64_t min_txg = 0, max_txg = 0;
 send_dump_data_t *sdd = arg;
 boolean_t missingfrom = B_FALSE;
 zfs_cmd_t zc = { 0 };

 (void) snprintf(zc.zc_name, sizeof (zc.zc_name), "%s@%s",
     zhp->zfs_name, sdd->tosnap);
 if (ioctl(zhp->zfs_hdl->libzfs_fd, ZFS_IOC_OBJSET_STATS, &zc) != 0) {
  (void) fprintf(stderr, dgettext(TEXT_DOMAIN,
      "WARNING: could not send %s@%s: does not exist\n"),
      zhp->zfs_name, sdd->tosnap);
  sdd->err = B_TRUE;
  return (0);
 }

 if (sdd->replicate && sdd->fromsnap) {







  (void) snprintf(zc.zc_name, sizeof (zc.zc_name), "%s@%s",
      zhp->zfs_name, sdd->fromsnap);
  if (ioctl(zhp->zfs_hdl->libzfs_fd,
      ZFS_IOC_OBJSET_STATS, &zc) != 0) {
   missingfrom = B_TRUE;
  }
 }

 sdd->seenfrom = sdd->seento = sdd->prevsnap[0] = 0;
 sdd->prevsnap_obj = 0;
 if (sdd->fromsnap == ((void*)0) || missingfrom)
  sdd->seenfrom = B_TRUE;

 if (!sdd->replicate && sdd->fromsnap != ((void*)0))
  min_txg = get_snap_txg(zhp->zfs_hdl, zhp->zfs_name,
      sdd->fromsnap);
 if (!sdd->replicate && sdd->tosnap != ((void*)0))
  max_txg = get_snap_txg(zhp->zfs_hdl, zhp->zfs_name,
      sdd->tosnap);

 rv = zfs_iter_snapshots_sorted(zhp, dump_snapshot, arg,
     min_txg, max_txg);
 if (!sdd->seenfrom) {
  (void) fprintf(stderr, dgettext(TEXT_DOMAIN,
      "WARNING: could not send %s@%s:\n"
      "incremental source (%s@%s) does not exist\n"),
      zhp->zfs_name, sdd->tosnap,
      zhp->zfs_name, sdd->fromsnap);
  sdd->err = B_TRUE;
 } else if (!sdd->seento) {
  if (sdd->fromsnap) {
   (void) fprintf(stderr, dgettext(TEXT_DOMAIN,
       "WARNING: could not send %s@%s:\n"
       "incremental source (%s@%s) "
       "is not earlier than it\n"),
       zhp->zfs_name, sdd->tosnap,
       zhp->zfs_name, sdd->fromsnap);
  } else {
   (void) fprintf(stderr, dgettext(TEXT_DOMAIN,
       "WARNING: "
       "could not send %s@%s: does not exist\n"),
       zhp->zfs_name, sdd->tosnap);
  }
  sdd->err = B_TRUE;
 }

 return (rv);
}
