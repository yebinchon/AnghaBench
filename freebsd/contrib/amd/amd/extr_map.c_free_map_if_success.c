
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchan_t ;
typedef scalar_t__ opaque_t ;
struct TYPE_11__ {int mf_flags; int mf_mount; int * mf_ops; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_12__ {int am_flags; int am_path; TYPE_1__* am_al; } ;
typedef TYPE_3__ am_node ;
struct TYPE_13__ {int d_uerr; } ;
struct TYPE_10__ {TYPE_2__* al_mnt; } ;


 int AMF_AUTOFS ;
 int AMQ_UMNT_FAILED ;
 int AMQ_UMNT_SIGNAL ;
 int EBUSY ;
 int ENOENT ;
 int MFF_IS_AUTOFS ;
 int MFF_UNMOUNTING ;
 int MFF_WANTTIMO ;
 int SIGTRAP ;
 int XLOG_ERROR ;
 int XLOG_STATS ;
 int am_unmounted (TYPE_3__*) ;
 TYPE_8__ amd_stats ;
 int amfs_program_ops ;
 int autofs_get_mp (TYPE_3__*) ;
 int autofs_umount_failed (TYPE_3__*) ;
 int get_mntfs_wchan (TYPE_2__*) ;
 int notify_child (TYPE_3__*,int ,int,int) ;
 int plog (int ,char*,int ,int) ;
 int reschedule_timeout_mp () ;
 int strerror (int) ;
 int wakeup (int ) ;

__attribute__((used)) static void
free_map_if_success(int rc, int term, opaque_t arg)
{
  am_node *mp = (am_node *) arg;
  mntfs *mf = mp->am_al->al_mnt;
  wchan_t wchan = get_mntfs_wchan(mf);




  mf->mf_flags &= ~MFF_UNMOUNTING;





  if (mf->mf_flags & MFF_WANTTIMO) {
    mf->mf_flags &= ~MFF_WANTTIMO;
    reschedule_timeout_mp();
  }
  if (term) {
    notify_child(mp, AMQ_UMNT_SIGNAL, 0, term);
    plog(XLOG_ERROR, "unmount for %s got signal %d", mp->am_path, term);
    amd_stats.d_uerr++;
  } else if (rc) {
    notify_child(mp, AMQ_UMNT_FAILED, rc, 0);
    if (mf->mf_ops == &amfs_program_ops || rc == EBUSY)
      plog(XLOG_STATS, "\"%s\" on %s still active", mp->am_path, mf->mf_mount);
    else
      plog(XLOG_ERROR, "%s: unmount: %s", mp->am_path, strerror(rc));
    amd_stats.d_uerr++;
  } else {



    am_unmounted(mp);
  }




  wakeup(wchan);
}
