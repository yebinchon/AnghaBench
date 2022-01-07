
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int * cb_prevsnap; int * cb_firstsnap; int cb_snapused; scalar_t__ cb_dryrun; scalar_t__ cb_parsable; scalar_t__ cb_verbose; int cb_nvl; } ;
typedef TYPE_1__ destroy_cbdata_t ;


 int free (int *) ;
 char* gettext (char*) ;
 int lzc_snaprange_space (int *,int *,scalar_t__*) ;
 int nomem () ;
 scalar_t__ nvlist_exists (int ,char const*) ;
 int printf (char*,char const*) ;
 void* strdup (char const*) ;
 int zfs_close (int *) ;
 char* zfs_get_name (int *) ;

__attribute__((used)) static int
destroy_print_cb(zfs_handle_t *zhp, void *arg)
{
 destroy_cbdata_t *cb = arg;
 const char *name = zfs_get_name(zhp);
 int err = 0;

 if (nvlist_exists(cb->cb_nvl, name)) {
  if (cb->cb_firstsnap == ((void*)0))
   cb->cb_firstsnap = strdup(name);
  if (cb->cb_prevsnap != ((void*)0))
   free(cb->cb_prevsnap);

  cb->cb_prevsnap = strdup(name);
  if (cb->cb_firstsnap == ((void*)0) || cb->cb_prevsnap == ((void*)0))
   nomem();
  if (cb->cb_verbose) {
   if (cb->cb_parsable) {
    (void) printf("destroy\t%s\n", name);
   } else if (cb->cb_dryrun) {
    (void) printf(gettext("would destroy %s\n"),
        name);
   } else {
    (void) printf(gettext("will destroy %s\n"),
        name);
   }
  }
 } else if (cb->cb_firstsnap != ((void*)0)) {

  uint64_t used = 0;
  err = lzc_snaprange_space(cb->cb_firstsnap,
      cb->cb_prevsnap, &used);
  cb->cb_snapused += used;
  free(cb->cb_firstsnap);
  cb->cb_firstsnap = ((void*)0);
  free(cb->cb_prevsnap);
  cb->cb_prevsnap = ((void*)0);
 }
 zfs_close(zhp);
 return (err);
}
