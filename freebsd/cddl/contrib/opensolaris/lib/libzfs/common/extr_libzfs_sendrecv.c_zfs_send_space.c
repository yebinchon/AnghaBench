
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int uint64_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;
 int EZFS_BADBACKUP ;
 int EZFS_CROSSTARGET ;
 int EZFS_NOENT ;
 int TEXT_DOMAIN ;
 int ZFS_TYPE_SNAPSHOT ;
 int assert (int ) ;
 char* dgettext (int ,char*) ;
 int lzc_send_space (char const*,char const*,int,int *) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strerror (int) ;
 int zfs_dataset_exists (int *,char const*,int ) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 int zfs_standard_error (int *,int,char*) ;

__attribute__((used)) static int
zfs_send_space(zfs_handle_t *zhp, const char *snapname, const char *from,
    enum lzc_send_flags flags, uint64_t *spacep)
{
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 int error;

 assert(snapname != ((void*)0));
 error = lzc_send_space(snapname, from, flags, spacep);

 if (error != 0) {
  char errbuf[1024];
  (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
      "warning: cannot estimate space for '%s'"), snapname);

  switch (error) {
  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "not an earlier snapshot from the same fs"));
   return (zfs_error(hdl, EZFS_CROSSTARGET, errbuf));

  case 135:
   if (zfs_dataset_exists(hdl, snapname,
       ZFS_TYPE_SNAPSHOT)) {
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "incremental source (%s) does not exist"),
        snapname);
   }
   return (zfs_error(hdl, EZFS_NOENT, errbuf));

  case 140:
  case 138:
  case 136:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 139:
  case 129:
  case 137:
   zfs_error_aux(hdl, strerror(error));
   return (zfs_error(hdl, EZFS_BADBACKUP, errbuf));

  default:
   return (zfs_standard_error(hdl, error, errbuf));
  }
 }

 return (0);
}
