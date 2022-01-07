
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct holdarg {char const* snapname; char const* tag; int error; int * nvl; int recursive; } ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef int boolean_t ;





 int EZFS_BADTYPE ;
 int EZFS_BADVERSION ;
 int EZFS_REFTAG_RELE ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int errno ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int fnvpair_value_int32 (int *) ;
 int lzc_release (int *,int **) ;
 scalar_t__ nvlist_empty (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int snprintf (char*,int,char*,...) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 int zfs_handle_dup (TYPE_1__*) ;
 int zfs_release_one (int ,struct holdarg*) ;
 int zfs_standard_error (int *,int,char*) ;
 int zfs_standard_error_fmt (int *,int,char*) ;

int
zfs_release(zfs_handle_t *zhp, const char *snapname, const char *tag,
    boolean_t recursive)
{
 int ret;
 struct holdarg ha;
 nvlist_t *errors = ((void*)0);
 nvpair_t *elem;
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 char errbuf[1024];

 ha.nvl = fnvlist_alloc();
 ha.snapname = snapname;
 ha.tag = tag;
 ha.recursive = recursive;
 ha.error = 0;
 (void) zfs_release_one(zfs_handle_dup(zhp), &ha);

 if (nvlist_empty(ha.nvl)) {
  fnvlist_free(ha.nvl);
  ret = ha.error;
  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN,
      "cannot release hold from snapshot '%s@%s'"),
      zhp->zfs_name, snapname);
  if (ret == 128) {
   (void) zfs_error(hdl, EZFS_REFTAG_RELE, errbuf);
  } else {
   (void) zfs_standard_error(hdl, ret, errbuf);
  }
  return (ret);
 }

 ret = lzc_release(ha.nvl, &errors);
 fnvlist_free(ha.nvl);

 if (ret == 0) {

  fnvlist_free(errors);
  return (0);
 }

 if (nvlist_empty(errors)) {

  (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
      "cannot release"));
  switch (errno) {
  case 129:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "pool must be upgraded"));
   (void) zfs_error(hdl, EZFS_BADVERSION, errbuf);
   break;
  default:
   (void) zfs_standard_error_fmt(hdl, errno, errbuf);
  }
 }

 for (elem = nvlist_next_nvpair(errors, ((void*)0));
     elem != ((void*)0);
     elem = nvlist_next_nvpair(errors, elem)) {
  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN,
      "cannot release hold from snapshot '%s'"),
      nvpair_name(elem));
  switch (fnvpair_value_int32(elem)) {
  case 128:
   (void) zfs_error(hdl, EZFS_REFTAG_RELE, errbuf);
   break;
  case 130:
   (void) zfs_error(hdl, EZFS_BADTYPE, errbuf);
   break;
  default:
   (void) zfs_standard_error_fmt(hdl,
       fnvpair_value_int32(elem), errbuf);
  }
 }

 fnvlist_free(errors);
 return (ret);
}
