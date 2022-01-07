
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int time_t ;
struct tm {int dummy; } ;
typedef int nvlist_t ;
struct TYPE_3__ {int libzfs_printerr; } ;
typedef TYPE_1__ libzfs_handle_t ;
typedef int int64_t ;
typedef scalar_t__ boolean_t ;


 int TEXT_DOMAIN ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_CONFIG_LOAD_TIME ;
 int ZPOOL_CONFIG_REWIND_INFO ;
 int ZPOOL_CONFIG_REWIND_TIME ;
 char* dgettext (int ,char*) ;
 int * localtime_r (int *,struct tm*) ;
 int nvlist_lookup_int64 (int *,int ,int*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int printf (char*,...) ;
 scalar_t__ strftime (char*,int,int ,struct tm*) ;

__attribute__((used)) static void
zpool_rewind_exclaim(libzfs_handle_t *hdl, const char *name, boolean_t dryrun,
    nvlist_t *config)
{
 nvlist_t *nv = ((void*)0);
 uint64_t rewindto;
 int64_t loss = -1;
 struct tm t;
 char timestr[128];

 if (!hdl->libzfs_printerr || config == ((void*)0))
  return;

 if (nvlist_lookup_nvlist(config, ZPOOL_CONFIG_LOAD_INFO, &nv) != 0 ||
     nvlist_lookup_nvlist(nv, ZPOOL_CONFIG_REWIND_INFO, &nv) != 0) {
  return;
 }

 if (nvlist_lookup_uint64(nv, ZPOOL_CONFIG_LOAD_TIME, &rewindto) != 0)
  return;
 (void) nvlist_lookup_int64(nv, ZPOOL_CONFIG_REWIND_TIME, &loss);

 if (localtime_r((time_t *)&rewindto, &t) != ((void*)0) &&
     strftime(timestr, 128, 0, &t) != 0) {
  if (dryrun) {
   (void) printf(dgettext(TEXT_DOMAIN,
       "Would be able to return %s "
       "to its state as of %s.\n"),
       name, timestr);
  } else {
   (void) printf(dgettext(TEXT_DOMAIN,
       "Pool %s returned to its state as of %s.\n"),
       name, timestr);
  }
  if (loss > 120) {
   (void) printf(dgettext(TEXT_DOMAIN,
       "%s approximately %lld "),
       dryrun ? "Would discard" : "Discarded",
       (loss + 30) / 60);
   (void) printf(dgettext(TEXT_DOMAIN,
       "minutes of transactions.\n"));
  } else if (loss > 0) {
   (void) printf(dgettext(TEXT_DOMAIN,
       "%s approximately %lld "),
       dryrun ? "Would discard" : "Discarded", loss);
   (void) printf(dgettext(TEXT_DOMAIN,
       "seconds of transactions.\n"));
  }
 }
}
