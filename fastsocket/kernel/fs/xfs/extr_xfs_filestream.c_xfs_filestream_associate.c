
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int xfs_mru_cache_t ;
struct TYPE_24__ {int sb_agcount; } ;
struct TYPE_25__ {int m_flags; int m_agfrotor; TYPE_2__ m_sb; int * m_filestream; } ;
typedef TYPE_3__ xfs_mount_t ;
struct TYPE_23__ {int di_mode; } ;
struct TYPE_26__ {int i_ino; TYPE_3__* i_mount; TYPE_1__ i_d; } ;
typedef TYPE_4__ xfs_inode_t ;
typedef int xfs_agnumber_t ;
struct TYPE_27__ {int ag; TYPE_4__* ip; } ;
typedef TYPE_5__ fstrm_item_t ;


 int ASSERT (int) ;
 int EINVAL ;
 int NULLAGNUMBER ;
 int S_IFDIR ;
 int S_IFREG ;
 int TRACE_ASSOCIATE (TYPE_3__*,TYPE_4__*,TYPE_4__*,int,int ) ;
 int TRACE_LOOKUP (TYPE_3__*,TYPE_4__*,TYPE_4__*,int,int ) ;
 int XFS_INO_TO_AGNO (TYPE_3__*,int ) ;
 int XFS_IOLOCK_EXCL ;
 int XFS_MOUNT_32BITINODES ;
 int _xfs_filestream_pick_ag (TYPE_3__*,int,int*,int ,int ) ;
 int _xfs_filestream_update_ag (TYPE_4__*,TYPE_4__*,int) ;
 int xfs_filestream_peek_ag (TYPE_3__*,int) ;
 int xfs_filestream_put_ag (TYPE_3__*,int) ;
 int xfs_ilock_nowait (TYPE_4__*,int ) ;
 int xfs_iunlock (TYPE_4__*,int ) ;
 int xfs_mru_cache_done (int *) ;
 TYPE_5__* xfs_mru_cache_lookup (int *,int ) ;
 int xfs_rotorstep ;

int
xfs_filestream_associate(
 xfs_inode_t *pip,
 xfs_inode_t *ip)
{
 xfs_mount_t *mp;
 xfs_mru_cache_t *cache;
 fstrm_item_t *item;
 xfs_agnumber_t ag, rotorstep, startag;
 int err = 0;

 ASSERT(pip->i_d.di_mode & S_IFDIR);
 ASSERT(ip->i_d.di_mode & S_IFREG);
 if (!(pip->i_d.di_mode & S_IFDIR) || !(ip->i_d.di_mode & S_IFREG))
  return -EINVAL;

 mp = pip->i_mount;
 cache = mp->m_filestream;
 if (!xfs_ilock_nowait(pip, XFS_IOLOCK_EXCL))
  return 1;


 item = xfs_mru_cache_lookup(cache, pip->i_ino);
 if (item) {
  ASSERT(item->ip == pip);
  ag = item->ag;
  xfs_mru_cache_done(cache);

  TRACE_LOOKUP(mp, pip, pip, ag, xfs_filestream_peek_ag(mp, ag));
  err = _xfs_filestream_update_ag(ip, pip, ag);

  goto exit;
 }





 if (mp->m_flags & XFS_MOUNT_32BITINODES) {
  rotorstep = xfs_rotorstep;
  startag = (mp->m_agfrotor / rotorstep) % mp->m_sb.sb_agcount;
  mp->m_agfrotor = (mp->m_agfrotor + 1) %
                   (mp->m_sb.sb_agcount * rotorstep);
 } else
  startag = XFS_INO_TO_AGNO(mp, pip->i_ino);


 err = _xfs_filestream_pick_ag(mp, startag, &ag, 0, 0);
 if (err || ag == NULLAGNUMBER)
  goto exit_did_pick;


 err = _xfs_filestream_update_ag(pip, ((void*)0), ag);
 if (err)
  goto exit_did_pick;


 err = _xfs_filestream_update_ag(ip, pip, ag);
 if (err)
  goto exit_did_pick;

 TRACE_ASSOCIATE(mp, ip, pip, ag, xfs_filestream_peek_ag(mp, ag));

exit_did_pick:





 if (ag != NULLAGNUMBER)
  xfs_filestream_put_ag(mp, ag);

exit:
 xfs_iunlock(pip, XFS_IOLOCK_EXCL);
 return -err;
}
