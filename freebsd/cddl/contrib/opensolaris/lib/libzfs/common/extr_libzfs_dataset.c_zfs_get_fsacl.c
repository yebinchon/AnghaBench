
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ zfs_type; int zfs_name; TYPE_3__* zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_10__ {int zc_nvlist_dst_size; uintptr_t zc_nvlist_dst; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int nvlist_t ;
struct TYPE_11__ {int libzfs_fd; } ;
typedef TYPE_3__ libzfs_handle_t ;
typedef int errbuf ;






 int EZFS_BADTYPE ;
 int EZFS_BADVERSION ;
 int EZFS_NOENT ;
 int EZFS_NOMEM ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_GET_FSACL ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZFS_TYPE_VOLUME ;
 int assert (int) ;
 char* dgettext (int ,char*) ;
 int errno ;
 int free (void*) ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;
 void* malloc (int) ;
 int nvlist_unpack (void*,int,int **,int ) ;
 int snprintf (char*,int,char*,int ) ;
 char* strerror (int) ;
 int strlcpy (int ,int ,int) ;
 int zfs_error (TYPE_3__*,int ,char*) ;
 int zfs_error_aux (TYPE_3__*,char*) ;
 int zfs_standard_error_fmt (TYPE_3__*,int,char*) ;

int
zfs_get_fsacl(zfs_handle_t *zhp, nvlist_t **nvl)
{
 zfs_cmd_t zc = { 0 };
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 int nvsz = 2048;
 void *nvbuf;
 int err = 0;
 char errbuf[1024];

 assert(zhp->zfs_type == ZFS_TYPE_VOLUME ||
     zhp->zfs_type == ZFS_TYPE_FILESYSTEM);

tryagain:

 nvbuf = malloc(nvsz);
 if (nvbuf == ((void*)0)) {
  err = (zfs_error(hdl, EZFS_NOMEM, strerror(errno)));
  goto out;
 }

 zc.zc_nvlist_dst_size = nvsz;
 zc.zc_nvlist_dst = (uintptr_t)nvbuf;

 (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

 if (ioctl(hdl->libzfs_fd, ZFS_IOC_GET_FSACL, &zc) != 0) {
  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN, "cannot get permissions on '%s'"),
      zc.zc_name);
  switch (errno) {
  case 129:
   free(nvbuf);
   nvsz = zc.zc_nvlist_dst_size;
   goto tryagain;

  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "pool must be upgraded"));
   err = zfs_error(hdl, EZFS_BADVERSION, errbuf);
   break;
  case 131:
   err = zfs_error(hdl, EZFS_BADTYPE, errbuf);
   break;
  case 130:
   err = zfs_error(hdl, EZFS_NOENT, errbuf);
   break;
  default:
   err = zfs_standard_error_fmt(hdl, errno, errbuf);
   break;
  }
 } else {

  int rc = nvlist_unpack(nvbuf, zc.zc_nvlist_dst_size, nvl, 0);
  if (rc) {
   (void) snprintf(errbuf, sizeof (errbuf), dgettext(
       TEXT_DOMAIN, "cannot get permissions on '%s'"),
       zc.zc_name);
   err = zfs_standard_error_fmt(hdl, rc, errbuf);
  }
 }

 free(nvbuf);
out:
 return (err);
}
