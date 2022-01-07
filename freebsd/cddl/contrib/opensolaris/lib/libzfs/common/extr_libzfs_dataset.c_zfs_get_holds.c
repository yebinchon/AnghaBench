
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;





 int EZFS_BADTYPE ;
 int EZFS_BADVERSION ;
 int EZFS_NOENT ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int errno ;
 int lzc_get_holds (int ,int **) ;
 int snprintf (char*,int,char*,int ) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 int zfs_standard_error_fmt (int *,int ,char*) ;

int
zfs_get_holds(zfs_handle_t *zhp, nvlist_t **nvl)
{
 int err;
 char errbuf[1024];

 err = lzc_get_holds(zhp->zfs_name, nvl);

 if (err != 0) {
  libzfs_handle_t *hdl = zhp->zfs_hdl;

  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN, "cannot get holds for '%s'"),
      zhp->zfs_name);
  switch (err) {
  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "pool must be upgraded"));
   err = zfs_error(hdl, EZFS_BADVERSION, errbuf);
   break;
  case 130:
   err = zfs_error(hdl, EZFS_BADTYPE, errbuf);
   break;
  case 129:
   err = zfs_error(hdl, EZFS_NOENT, errbuf);
   break;
  default:
   err = zfs_standard_error_fmt(hdl, errno, errbuf);
   break;
  }
 }

 return (err);
}
