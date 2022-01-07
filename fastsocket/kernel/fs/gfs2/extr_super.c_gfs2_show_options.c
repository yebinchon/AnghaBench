
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int mnt_root; TYPE_1__* mnt_sb; } ;
struct seq_file {int dummy; } ;
struct TYPE_4__ {int gt_log_flush_secs; int gt_statfs_quantum; int gt_quota_quantum; } ;
struct gfs2_args {int ar_quota; int ar_data; int ar_errors; int ar_statfs_percent; scalar_t__ ar_discard; scalar_t__ ar_suiddir; scalar_t__ ar_posix_acl; scalar_t__ ar_upgrade; scalar_t__ ar_debug; scalar_t__ ar_localcaching; scalar_t__ ar_localflocks; scalar_t__ ar_ignore_local_fs; scalar_t__ ar_spectator; scalar_t__* ar_hostdata; scalar_t__* ar_locktable; scalar_t__* ar_lockproto; } ;
struct gfs2_sbd {int sd_flags; TYPE_2__ sd_tune; int sd_master_dir; struct gfs2_args sd_args; } ;
struct TYPE_3__ {struct gfs2_sbd* s_fs_info; } ;


 int GFS2_DATA_DEFAULT ;


 int GFS2_ERRORS_DEFAULT ;



 int GFS2_QUOTA_DEFAULT ;


 int SDF_DEMOTE ;
 int SDF_NOBARRIERS ;
 scalar_t__ is_ancestor (int ,int ) ;
 int seq_printf (struct seq_file*,char*,...) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int gfs2_show_options(struct seq_file *s, struct vfsmount *mnt)
{
 struct gfs2_sbd *sdp = mnt->mnt_sb->s_fs_info;
 struct gfs2_args *args = &sdp->sd_args;
 int val;

 if (is_ancestor(mnt->mnt_root, sdp->sd_master_dir))
  seq_printf(s, ",meta");
 if (args->ar_lockproto[0])
  seq_printf(s, ",lockproto=%s", args->ar_lockproto);
 if (args->ar_locktable[0])
  seq_printf(s, ",locktable=%s", args->ar_locktable);
 if (args->ar_hostdata[0])
  seq_printf(s, ",hostdata=%s", args->ar_hostdata);
 if (args->ar_spectator)
  seq_printf(s, ",spectator");
 if (args->ar_ignore_local_fs)
  seq_printf(s, ",ignore_local_fs");
 if (args->ar_localflocks)
  seq_printf(s, ",localflocks");
 if (args->ar_localcaching)
  seq_printf(s, ",localcaching");
 if (args->ar_debug)
  seq_printf(s, ",debug");
 if (args->ar_upgrade)
  seq_printf(s, ",upgrade");
 if (args->ar_posix_acl)
  seq_printf(s, ",acl");
 if (args->ar_quota != GFS2_QUOTA_DEFAULT) {
  char *state;
  switch (args->ar_quota) {
  case 129:
   state = "off";
   break;
  case 130:
   state = "account";
   break;
  case 128:
   state = "on";
   break;
  default:
   state = "unknown";
   break;
  }
  seq_printf(s, ",quota=%s", state);
 }
 if (args->ar_suiddir)
  seq_printf(s, ",suiddir");
 if (args->ar_data != GFS2_DATA_DEFAULT) {
  char *state;
  switch (args->ar_data) {
  case 133:
   state = "writeback";
   break;
  case 134:
   state = "ordered";
   break;
  default:
   state = "unknown";
   break;
  }
  seq_printf(s, ",data=%s", state);
 }
 if (args->ar_discard)
  seq_printf(s, ",discard");
 val = sdp->sd_tune.gt_log_flush_secs;
 if (val != 60)
  seq_printf(s, ",commit=%d", val);
 val = sdp->sd_tune.gt_statfs_quantum;
 if (val != 30)
  seq_printf(s, ",statfs_quantum=%d", val);
 val = sdp->sd_tune.gt_quota_quantum;
 if (val != 60)
  seq_printf(s, ",quota_quantum=%d", val);
 if (args->ar_statfs_percent)
  seq_printf(s, ",statfs_percent=%d", args->ar_statfs_percent);
 if (args->ar_errors != GFS2_ERRORS_DEFAULT) {
  const char *state;

  switch (args->ar_errors) {
  case 131:
   state = "withdraw";
   break;
  case 132:
   state = "panic";
   break;
  default:
   state = "unknown";
   break;
  }
  seq_printf(s, ",errors=%s", state);
 }
 if (test_bit(SDF_NOBARRIERS, &sdp->sd_flags))
  seq_printf(s, ",nobarrier");
 if (test_bit(SDF_DEMOTE, &sdp->sd_flags))
  seq_printf(s, ",demote_interface_used");
 return 0;
}
