
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int toplvl_opts ;
struct stat {int st_mode; } ;
typedef int preopts ;
typedef int opts ;
struct TYPE_10__ {int mf_flags; int mf_info; TYPE_1__* mf_ops; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_11__ {int am_autofs_fh; int am_path; } ;
typedef TYPE_3__ am_node ;
struct TYPE_12__ {scalar_t__* amfs_auto_timeo; scalar_t__* amfs_auto_retrans; scalar_t__ auto_attrcache; } ;
struct TYPE_9__ {int fs_type; } ;


 size_t AMU_TYPE_TOPLVL ;
 int ENOTDIR ;
 int MFF_IS_AUTOFS ;
 char* MNTTAB_OPT_IGNORE ;
 char* MNTTAB_OPT_INTR ;
 char* MNTTAB_OPT_NOAC ;
 char* MNTTAB_OPT_NOLOCK ;
 int MNTTAB_OPT_PORT ;
 int MNTTAB_OPT_RETRANS ;
 int MNTTAB_OPT_RW ;
 int MNTTAB_OPT_TIMEO ;
 int SIZEOF_OPTS ;
 int S_IFDIR ;
 int S_IFMT ;
 int XLOG_FATAL ;
 int XLOG_WARNING ;
 int amfs_mount (TYPE_3__*,TYPE_2__*,char*) ;
 int autofs_get_opts (char*,int,int ) ;
 int errno ;
 TYPE_4__ gopt ;
 int nfs_port ;
 int plog (int ,char*,...) ;
 int set_auto_attrcache_timeout (char*,char*,int) ;
 scalar_t__ stat (int ,struct stat*) ;
 int xsnprintf (char*,int,char*,char*,scalar_t__,...) ;
 int xstrlcat (char*,char*,int) ;

int
amfs_toplvl_mount(am_node *mp, mntfs *mf)
{
  struct stat stb;
  char opts[SIZEOF_OPTS], preopts[SIZEOF_OPTS], toplvl_opts[40];
  int error;







  if (stat(mp->am_path, &stb) < 0) {
    return errno;
  } else if ((stb.st_mode & S_IFMT) != S_IFDIR) {
    plog(XLOG_WARNING, "%s is not a directory", mp->am_path);
    return ENOTDIR;
  }
  {
    preopts[0] = '\0';
    xsnprintf(opts, sizeof(opts), "%s%s,%s=%d,%s,map=%s",
       preopts,
       MNTTAB_OPT_RW,
       MNTTAB_OPT_PORT, nfs_port,
       mf->mf_ops->fs_type, mf->mf_info);


    if (gopt.amfs_auto_timeo[AMU_TYPE_TOPLVL] > 0) {
      xsnprintf(toplvl_opts, sizeof(toplvl_opts), ",%s=%d",
  MNTTAB_OPT_TIMEO, gopt.amfs_auto_timeo[AMU_TYPE_TOPLVL]);
      xstrlcat(opts, toplvl_opts, sizeof(opts));
    }
    if (gopt.amfs_auto_retrans[AMU_TYPE_TOPLVL] > 0) {
      xsnprintf(toplvl_opts, sizeof(toplvl_opts), ",%s=%d",
  MNTTAB_OPT_RETRANS, gopt.amfs_auto_retrans[AMU_TYPE_TOPLVL]);
      xstrlcat(opts, toplvl_opts, sizeof(opts));
    }
      set_auto_attrcache_timeout(preopts, opts, sizeof(preopts));
  }


  error = amfs_mount(mp, mf, opts);
  if (error) {
    errno = error;
    plog(XLOG_FATAL, "amfs_toplvl_mount: amfs_mount failed: %m");
    return error;
  }
  return 0;
}
