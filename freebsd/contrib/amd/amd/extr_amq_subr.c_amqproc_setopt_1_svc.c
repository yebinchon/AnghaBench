
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ voidp ;
struct svc_req {int dummy; } ;
typedef int fserver ;
struct TYPE_3__ {int as_opt; int as_str; } ;
typedef TYPE_1__ amq_setopt ;
struct TYPE_4__ {int logfile; } ;






 int EACCES ;
 int EINVAL ;
 int Run ;
 int STREQ (int ,int ) ;
 int XLOG_INFO ;
 int amd_state ;
 int debug_option (int ) ;
 int do_mapc_reload ;
 int flush_nfs_fhandle_cache (int *) ;
 int flush_srvr_nfs_cache (int *) ;
 TYPE_2__ gopt ;
 int orig_umask ;
 int plog (int ,char*) ;
 int switch_option (int ) ;
 int switch_to_logfile (int ,int ,int ) ;

int *
amqproc_setopt_1_svc(voidp argp, struct svc_req *rqstp)
{
  static int rc;
  amq_setopt *opt = (amq_setopt *) argp;

  rc = 0;

  switch (opt->as_opt) {

  case 131:
    if (debug_option(opt->as_str))
      rc = EINVAL;
    break;

  case 129:
    if (gopt.logfile && opt->as_str
 && STREQ(gopt.logfile, opt->as_str)) {
      if (switch_to_logfile(opt->as_str, orig_umask, 0))
 rc = EINVAL;
    } else {
      rc = EACCES;
    }
    break;

  case 128:
    if (switch_option(opt->as_str))
      rc = EINVAL;
    break;

  case 130:
    if (amd_state == Run) {
      plog(XLOG_INFO, "amq says flush cache");
      do_mapc_reload = 0;
      flush_nfs_fhandle_cache((fserver *) ((void*)0));
      flush_srvr_nfs_cache((fserver *) ((void*)0));
    }
    break;
  }

  return &rc;
}
