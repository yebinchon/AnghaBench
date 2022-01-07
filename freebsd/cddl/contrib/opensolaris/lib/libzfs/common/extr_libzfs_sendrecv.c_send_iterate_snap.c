
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dds_guid; scalar_t__ dds_creation_txg; } ;
struct TYPE_8__ {int zfs_name; TYPE_1__ zfs_dmustats; } ;
typedef TYPE_2__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_9__ {scalar_t__ tosnap_txg; scalar_t__ parent_fromsnap_guid; int snapprops; scalar_t__ tosnap; scalar_t__ fromsnap; int parent_snaps; scalar_t__ verbose; } ;
typedef TYPE_3__ send_data_t ;
typedef int nvlist_t ;


 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 int VERIFY (int) ;
 char* dgettext (int ,char*) ;
 int fprintf (int ,char*,int ,scalar_t__) ;
 scalar_t__ nvlist_add_nvlist (int ,char*,int *) ;
 scalar_t__ nvlist_add_uint64 (int ,char*,scalar_t__) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int send_iterate_prop (TYPE_2__*,int *) ;
 int stderr ;
 scalar_t__ strcmp (char*,scalar_t__) ;
 char* strrchr (int ,char) ;
 int zfs_close (TYPE_2__*) ;

__attribute__((used)) static int
send_iterate_snap(zfs_handle_t *zhp, void *arg)
{
 send_data_t *sd = arg;
 uint64_t guid = zhp->zfs_dmustats.dds_guid;
 uint64_t txg = zhp->zfs_dmustats.dds_creation_txg;
 char *snapname;
 nvlist_t *nv;

 snapname = strrchr(zhp->zfs_name, '@')+1;

 if (sd->tosnap_txg != 0 && txg > sd->tosnap_txg) {
  if (sd->verbose) {
   (void) fprintf(stderr, dgettext(TEXT_DOMAIN,
       "skipping snapshot %s because it was created "
       "after the destination snapshot (%s)\n"),
       zhp->zfs_name, sd->tosnap);
  }
  zfs_close(zhp);
  return (0);
 }

 VERIFY(0 == nvlist_add_uint64(sd->parent_snaps, snapname, guid));




 if ((sd->fromsnap && strcmp(snapname, sd->fromsnap) == 0) ||
     (sd->parent_fromsnap_guid == 0 && sd->tosnap &&
     strcmp(snapname, sd->tosnap) == 0)) {
  sd->parent_fromsnap_guid = guid;
 }

 VERIFY(0 == nvlist_alloc(&nv, NV_UNIQUE_NAME, 0));
 send_iterate_prop(zhp, nv);
 VERIFY(0 == nvlist_add_nvlist(sd->snapprops, snapname, nv));
 nvlist_free(nv);

 zfs_close(zhp);
 return (0);
}
