
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ dryrun; int parsable; scalar_t__ verbose; scalar_t__ compress; scalar_t__ embed_data; scalar_t__ largeblock; } ;
typedef TYPE_2__ sendflags_t ;
typedef char* longlong_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;
typedef int buf ;
typedef int FILE ;
 int EZFS_BADBACKUP ;
 int EZFS_BUSY ;
 int EZFS_CROSSTARGET ;
 int EZFS_NOENT ;
 int LZC_SEND_FLAG_COMPRESS ;
 int LZC_SEND_FLAG_EMBED_DATA ;
 int LZC_SEND_FLAG_LARGE_BLOCK ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int errno ;
 int fprintf (int *,char*,char*) ;
 int lzc_exists (int ) ;
 int lzc_send (int ,char const*,int,int) ;
 int lzc_send_space (int ,char const*,int,scalar_t__*) ;
 int send_print_verbose (int *,int ,char const*,scalar_t__,int ) ;
 int snprintf (char*,int,char*,int ) ;
 int * stderr ;
 int * stdout ;
 char* strerror (int) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 int zfs_nicenum (scalar_t__,char*,int) ;
 int zfs_standard_error (int *,int,char*) ;

int
zfs_send_one(zfs_handle_t *zhp, const char *from, int fd, sendflags_t flags)
{
 int err = 0;
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 enum lzc_send_flags lzc_flags = 0;
 FILE *fout = (flags.verbose && flags.dryrun) ? stdout : stderr;
 char errbuf[1024];

 if (flags.largeblock)
  lzc_flags |= LZC_SEND_FLAG_LARGE_BLOCK;
 if (flags.embed_data)
  lzc_flags |= LZC_SEND_FLAG_EMBED_DATA;
 if (flags.compress)
  lzc_flags |= LZC_SEND_FLAG_COMPRESS;

 if (flags.verbose) {
  uint64_t size = 0;
  err = lzc_send_space(zhp->zfs_name, from, lzc_flags, &size);
  if (err == 0) {
   send_print_verbose(fout, zhp->zfs_name, from, size,
       flags.parsable);
   if (flags.parsable) {
    (void) fprintf(fout, "size\t%llu\n",
        (longlong_t)size);
   } else {
    char buf[16];
    zfs_nicenum(size, buf, sizeof (buf));
    (void) fprintf(fout, dgettext(TEXT_DOMAIN,
        "total estimated size is %s\n"), buf);
   }
  } else {
   (void) fprintf(stderr, "Cannot estimate send size: "
       "%s\n", strerror(errno));
  }
 }

 if (flags.dryrun)
  return (err);

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "warning: cannot send '%s'"), zhp->zfs_name);

 err = lzc_send(zhp->zfs_name, from, fd, lzc_flags);
 if (err != 0) {
  switch (errno) {
  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "not an earlier snapshot from the same fs"));
   return (zfs_error(hdl, EZFS_CROSSTARGET, errbuf));

  case 137:
  case 129:
   if (lzc_exists(zhp->zfs_name)) {
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "incremental source (%s) does not exist"),
        from);
   }
   return (zfs_error(hdl, EZFS_NOENT, errbuf));

  case 142:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "target is busy; if a filesystem, "
       "it must not be mounted"));
   return (zfs_error(hdl, EZFS_BUSY, errbuf));

  case 141:
  case 139:
  case 138:
  case 136:
  case 135:



  case 133:
  case 132:
  case 131:
  case 140:
  case 130:
   zfs_error_aux(hdl, strerror(errno));
   return (zfs_error(hdl, EZFS_BADBACKUP, errbuf));

  default:
   return (zfs_standard_error(hdl, errno, errbuf));
  }
 }
 return (err != 0);
}
