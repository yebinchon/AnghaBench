
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ dds_creation_txg; scalar_t__ dds_guid; scalar_t__* dds_origin; } ;
struct TYPE_14__ {TYPE_1__ zfs_dmustats; int zfs_hdl; int zfs_name; } ;
typedef TYPE_2__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_15__ {scalar_t__ parent_fromsnap_guid; scalar_t__ fromsnap_txg; scalar_t__ tosnap_txg; scalar_t__ recursive; int * fss; int * snapprops; int * parent_snaps; int replicate; int * tosnap; int fsname; scalar_t__ verbose; int * fromsnap; } ;
typedef TYPE_3__ send_data_t ;
typedef int nvlist_t ;
typedef int longlong_t ;
typedef int guidstring ;


 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 int VERIFY (int) ;
 int ZFS_TYPE_SNAPSHOT ;
 char* dgettext (int ,char*) ;
 int fnvlist_add_string (int *,char*,int ) ;
 int fnvlist_add_uint64 (int *,char*,scalar_t__) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int fprintf (int ,char*,int ,int *,...) ;
 scalar_t__ get_snap_txg (int ,int ,int *) ;
 scalar_t__ nvlist_add_nvlist (int *,char*,int *) ;
 scalar_t__ nvlist_add_uint64 (int *,char*,scalar_t__) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int send_iterate_prop (TYPE_2__*,int *) ;
 int send_iterate_snap ;
 int snprintf (char*,int,char*,int ) ;
 int stderr ;
 int zfs_close (TYPE_2__*) ;
 int zfs_iter_filesystems (TYPE_2__*,int (*) (TYPE_2__*,void*),TYPE_3__*) ;
 int zfs_iter_snapshots_sorted (TYPE_2__*,int ,TYPE_3__*,scalar_t__,scalar_t__) ;
 TYPE_2__* zfs_open (int ,scalar_t__*,int ) ;

__attribute__((used)) static int
send_iterate_fs(zfs_handle_t *zhp, void *arg)
{
 send_data_t *sd = arg;
 nvlist_t *nvfs, *nv;
 int rv = 0;
 uint64_t min_txg = 0, max_txg = 0;
 uint64_t parent_fromsnap_guid_save = sd->parent_fromsnap_guid;
 uint64_t fromsnap_txg_save = sd->fromsnap_txg;
 uint64_t tosnap_txg_save = sd->tosnap_txg;
 uint64_t txg = zhp->zfs_dmustats.dds_creation_txg;
 uint64_t guid = zhp->zfs_dmustats.dds_guid;
 uint64_t fromsnap_txg, tosnap_txg;
 char guidstring[64];

 fromsnap_txg = get_snap_txg(zhp->zfs_hdl, zhp->zfs_name, sd->fromsnap);
 if (fromsnap_txg != 0)
  sd->fromsnap_txg = fromsnap_txg;

 tosnap_txg = get_snap_txg(zhp->zfs_hdl, zhp->zfs_name, sd->tosnap);
 if (tosnap_txg != 0)
  sd->tosnap_txg = tosnap_txg;
 if (sd->tosnap != ((void*)0) && tosnap_txg == 0) {
  if (sd->tosnap_txg != 0 && txg > sd->tosnap_txg) {
   if (sd->verbose) {
    (void) fprintf(stderr, dgettext(TEXT_DOMAIN,
        "skipping dataset %s: snapshot %s does "
        "not exist\n"), zhp->zfs_name, sd->tosnap);
   }
  } else {
   (void) fprintf(stderr, dgettext(TEXT_DOMAIN,
       "cannot send %s@%s%s: snapshot %s@%s does not "
       "exist\n"), sd->fsname, sd->tosnap, sd->recursive ?
       dgettext(TEXT_DOMAIN, " recursively") : "",
       zhp->zfs_name, sd->tosnap);
   rv = -1;
  }
  goto out;
 }

 nvfs = fnvlist_alloc();
 fnvlist_add_string(nvfs, "name", zhp->zfs_name);
 fnvlist_add_uint64(nvfs, "parentfromsnap",
     sd->parent_fromsnap_guid);

 if (zhp->zfs_dmustats.dds_origin[0]) {
  zfs_handle_t *origin = zfs_open(zhp->zfs_hdl,
      zhp->zfs_dmustats.dds_origin, ZFS_TYPE_SNAPSHOT);
  if (origin == ((void*)0)) {
   rv = -1;
   goto out;
  }
  VERIFY(0 == nvlist_add_uint64(nvfs, "origin",
      origin->zfs_dmustats.dds_guid));
 }


 VERIFY(0 == nvlist_alloc(&nv, NV_UNIQUE_NAME, 0));
 send_iterate_prop(zhp, nv);
 VERIFY(0 == nvlist_add_nvlist(nvfs, "props", nv));
 nvlist_free(nv);


 if (!sd->replicate && fromsnap_txg != 0)
  min_txg = fromsnap_txg;
 if (!sd->replicate && tosnap_txg != 0)
  max_txg = tosnap_txg;
 sd->parent_fromsnap_guid = 0;
 VERIFY(0 == nvlist_alloc(&sd->parent_snaps, NV_UNIQUE_NAME, 0));
 VERIFY(0 == nvlist_alloc(&sd->snapprops, NV_UNIQUE_NAME, 0));
 (void) zfs_iter_snapshots_sorted(zhp, send_iterate_snap, sd,
     min_txg, max_txg);
 VERIFY(0 == nvlist_add_nvlist(nvfs, "snaps", sd->parent_snaps));
 VERIFY(0 == nvlist_add_nvlist(nvfs, "snapprops", sd->snapprops));
 fnvlist_free(sd->parent_snaps);
 fnvlist_free(sd->snapprops);


 (void) snprintf(guidstring, sizeof (guidstring),
     "0x%llx", (longlong_t)guid);
 VERIFY(0 == nvlist_add_nvlist(sd->fss, guidstring, nvfs));
 nvlist_free(nvfs);


 if (sd->recursive)
  rv = zfs_iter_filesystems(zhp, send_iterate_fs, sd);

out:
 sd->parent_fromsnap_guid = parent_fromsnap_guid_save;
 sd->fromsnap_txg = fromsnap_txg_save;
 sd->tosnap_txg = tosnap_txg_save;

 zfs_close(zhp);
 return (rv);
}
