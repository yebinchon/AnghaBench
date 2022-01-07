
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef int boolean_t ;



 int EZFS_EXISTS ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int errno ;
 int fnvpair_value_int32 (int *) ;
 int lzc_destroy_snaps (int *,int ,int **) ;
 scalar_t__ nvlist_empty (int *) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int snprintf (char*,int,char*,...) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 int zfs_standard_error (int *,int,char*) ;

int
zfs_destroy_snaps_nvl(libzfs_handle_t *hdl, nvlist_t *snaps, boolean_t defer)
{
 int ret;
 nvlist_t *errlist = ((void*)0);

 ret = lzc_destroy_snaps(snaps, defer, &errlist);

 if (ret == 0) {
  nvlist_free(errlist);
  return (0);
 }

 if (nvlist_empty(errlist)) {
  char errbuf[1024];
  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN, "cannot destroy snapshots"));

  ret = zfs_standard_error(hdl, ret, errbuf);
 }
 for (nvpair_t *pair = nvlist_next_nvpair(errlist, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(errlist, pair)) {
  char errbuf[1024];
  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN, "cannot destroy snapshot %s"),
      nvpair_name(pair));

  switch (fnvpair_value_int32(pair)) {
  case 128:
   zfs_error_aux(hdl,
       dgettext(TEXT_DOMAIN, "snapshot is cloned"));
   ret = zfs_error(hdl, EZFS_EXISTS, errbuf);
   break;
  default:
   ret = zfs_standard_error(hdl, errno, errbuf);
   break;
  }
 }

 nvlist_free(errlist);
 return (ret);
}
