
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct TYPE_5__ {int ar_quota; } ;
struct gfs2_sbd {TYPE_4__* sd_quota_inode; TYPE_1__ sd_args; } ;
struct TYPE_6__ {int qfs_nextents; int qfs_nblks; int qfs_ino; } ;
struct fs_quota_stat {int qs_flags; int qs_incoredqs; TYPE_2__ qs_uquota; TYPE_2__ qs_gquota; int qs_version; } ;
struct TYPE_8__ {int i_blocks; } ;
struct TYPE_7__ {int i_no_addr; } ;


 int FS_QSTAT_VERSION ;
 TYPE_3__* GFS2_I (TYPE_4__*) ;



 int XFS_QUOTA_GDQ_ACCT ;
 int XFS_QUOTA_GDQ_ENFD ;
 int XFS_QUOTA_UDQ_ACCT ;
 int XFS_QUOTA_UDQ_ENFD ;
 int atomic_read (int *) ;
 int memset (struct fs_quota_stat*,int ,int) ;
 int qd_lru_count ;

__attribute__((used)) static int gfs2_quota_get_xstate(struct super_block *sb,
     struct fs_quota_stat *fqs)
{
 struct gfs2_sbd *sdp = sb->s_fs_info;

 memset(fqs, 0, sizeof(struct fs_quota_stat));
 fqs->qs_version = FS_QSTAT_VERSION;

 switch (sdp->sd_args.ar_quota) {
 case 128:
  fqs->qs_flags |= (XFS_QUOTA_UDQ_ENFD | XFS_QUOTA_GDQ_ENFD);

 case 130:
  fqs->qs_flags |= (XFS_QUOTA_UDQ_ACCT | XFS_QUOTA_GDQ_ACCT);
  break;
 case 129:
  break;
 }

 if (sdp->sd_quota_inode) {
  fqs->qs_uquota.qfs_ino = GFS2_I(sdp->sd_quota_inode)->i_no_addr;
  fqs->qs_uquota.qfs_nblks = sdp->sd_quota_inode->i_blocks;
 }
 fqs->qs_uquota.qfs_nextents = 1;
 fqs->qs_gquota = fqs->qs_uquota;
 fqs->qs_incoredqs = atomic_read(&qd_lru_count);
 return 0;
}
