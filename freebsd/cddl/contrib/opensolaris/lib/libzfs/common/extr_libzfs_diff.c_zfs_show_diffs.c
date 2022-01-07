
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_13__ {int zc_cookie; int zc_name; int zc_value; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int pthread_t ;
typedef int errbuf ;
struct TYPE_14__ {int scripted; int classify; int timestamped; int outputfd; int datafd; scalar_t__ zerr; char* errbuf; int tosnap; int fromsnap; int member_0; } ;
typedef TYPE_3__ differ_info_t ;
struct TYPE_15__ {int libzfs_fd; } ;


 scalar_t__ EPERM ;
 scalar_t__ EPIPE ;
 scalar_t__ EXDEV ;
 int EZFS_DIFF ;
 int EZFS_DIFFDATA ;
 int EZFS_PIPEFAILED ;
 int EZFS_THREADCREATEFAILED ;
 int TEXT_DOMAIN ;
 int ZFS_DIFF_CLASSIFY ;
 int ZFS_DIFF_PARSEABLE ;
 int ZFS_DIFF_TIMESTAMP ;
 int ZFS_IOC_DIFF ;
 int close (int) ;
 char* dgettext (int ,char*) ;
 int differ ;
 scalar_t__ errno ;
 int ioctl (int ,int ,TYPE_2__*) ;
 scalar_t__ pipe (int*) ;
 int pthread_cancel (int ) ;
 scalar_t__ pthread_create (int *,int *,int ,TYPE_3__*) ;
 int pthread_join (int ,int *) ;
 scalar_t__ setup_differ_info (TYPE_1__*,char const*,char const*,TYPE_3__*) ;
 int snprintf (char*,int,char*) ;
 char* strerror (scalar_t__) ;
 int strlcpy (int ,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;
 int teardown_differ_info (TYPE_3__*) ;
 int zfs_error (TYPE_5__*,int ,char*) ;
 int zfs_error_aux (TYPE_5__*,char*) ;

int
zfs_show_diffs(zfs_handle_t *zhp, int outfd, const char *fromsnap,
    const char *tosnap, int flags)
{
 zfs_cmd_t zc = { 0 };
 char errbuf[1024];
 differ_info_t di = { 0 };
 pthread_t tid;
 int pipefd[2];
 int iocerr;

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "zfs diff failed"));

 if (setup_differ_info(zhp, fromsnap, tosnap, &di)) {
  teardown_differ_info(&di);
  return (-1);
 }

 if (pipe(pipefd)) {
  zfs_error_aux(zhp->zfs_hdl, strerror(errno));
  teardown_differ_info(&di);
  return (zfs_error(zhp->zfs_hdl, EZFS_PIPEFAILED, errbuf));
 }

 di.scripted = (flags & ZFS_DIFF_PARSEABLE);
 di.classify = (flags & ZFS_DIFF_CLASSIFY);
 di.timestamped = (flags & ZFS_DIFF_TIMESTAMP);

 di.outputfd = outfd;
 di.datafd = pipefd[0];

 if (pthread_create(&tid, ((void*)0), differ, &di)) {
  zfs_error_aux(zhp->zfs_hdl, strerror(errno));
  (void) close(pipefd[0]);
  (void) close(pipefd[1]);
  teardown_differ_info(&di);
  return (zfs_error(zhp->zfs_hdl,
      EZFS_THREADCREATEFAILED, errbuf));
 }


 (void) strlcpy(zc.zc_value, di.fromsnap, strlen(di.fromsnap) + 1);
 (void) strlcpy(zc.zc_name, di.tosnap, strlen(di.tosnap) + 1);
 zc.zc_cookie = pipefd[1];

 iocerr = ioctl(zhp->zfs_hdl->libzfs_fd, ZFS_IOC_DIFF, &zc);
 if (iocerr != 0) {
  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN, "Unable to obtain diffs"));
  if (errno == EPERM) {
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "\n   The sys_mount privilege or diff delegated "
       "permission is needed\n   to execute the "
       "diff ioctl"));
  } else if (errno == EXDEV) {
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "\n   Not an earlier snapshot from the same fs"));
  } else if (errno != EPIPE || di.zerr == 0) {
   zfs_error_aux(zhp->zfs_hdl, strerror(errno));
  }
  (void) close(pipefd[1]);
  (void) pthread_cancel(tid);
  (void) pthread_join(tid, ((void*)0));
  teardown_differ_info(&di);
  if (di.zerr != 0 && di.zerr != EPIPE) {
   zfs_error_aux(zhp->zfs_hdl, strerror(di.zerr));
   return (zfs_error(zhp->zfs_hdl, EZFS_DIFF, di.errbuf));
  } else {
   return (zfs_error(zhp->zfs_hdl, EZFS_DIFFDATA, errbuf));
  }
 }

 (void) close(pipefd[1]);
 (void) pthread_join(tid, ((void*)0));

 if (di.zerr != 0) {
  zfs_error_aux(zhp->zfs_hdl, strerror(di.zerr));
  return (zfs_error(zhp->zfs_hdl, EZFS_DIFF, di.errbuf));
 }
 teardown_differ_info(&di);
 return (0);
}
