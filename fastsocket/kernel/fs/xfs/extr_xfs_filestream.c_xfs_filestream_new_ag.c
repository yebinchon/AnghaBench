
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int xfs_mru_cache_t ;
struct TYPE_24__ {int sb_agcount; } ;
struct TYPE_25__ {TYPE_1__ m_sb; int * m_filestream; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_26__ {int i_ino; TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
typedef int xfs_extlen_t ;
struct TYPE_27__ {scalar_t__ low; scalar_t__ userdata; int alen; TYPE_3__* ip; } ;
typedef TYPE_4__ xfs_bmalloca_t ;
typedef int xfs_agnumber_t ;
struct TYPE_28__ {int ag; TYPE_3__* ip; TYPE_3__* pip; } ;
typedef TYPE_5__ fstrm_item_t ;


 int ASSERT (int) ;
 int NULLAGNUMBER ;
 int TRACE_MOVEAG (TYPE_2__*,TYPE_3__*,TYPE_3__*,int,int ,int,int ) ;
 int TRACE_ORPHAN (TYPE_2__*,TYPE_3__*,int) ;
 int XFS_IOLOCK_EXCL ;
 int XFS_IOLOCK_PARENT ;
 int XFS_PICK_LOWSPACE ;
 int XFS_PICK_USERDATA ;
 int _xfs_filestream_pick_ag (TYPE_2__*,int,int*,int,int ) ;
 int _xfs_filestream_update_ag (TYPE_3__*,TYPE_3__*,int) ;
 int xfs_filestream_get_ag (TYPE_2__*,int) ;
 int xfs_filestream_peek_ag (TYPE_2__*,int) ;
 int xfs_filestream_put_ag (TYPE_2__*,int) ;
 int xfs_fstrm_free_func (int ,TYPE_5__*) ;
 int xfs_ilock (TYPE_3__*,int) ;
 int xfs_iunlock (TYPE_3__*,int) ;
 int xfs_mru_cache_done (int *) ;
 int xfs_mru_cache_insert (int *,int ,TYPE_5__*) ;
 TYPE_5__* xfs_mru_cache_lookup (int *,int ) ;
 TYPE_5__* xfs_mru_cache_remove (int *,int ) ;

int
xfs_filestream_new_ag(
 xfs_bmalloca_t *ap,
 xfs_agnumber_t *agp)
{
 int flags, err;
 xfs_inode_t *ip, *pip = ((void*)0);
 xfs_mount_t *mp;
 xfs_mru_cache_t *cache;
 xfs_extlen_t minlen;
 fstrm_item_t *dir, *file;
 xfs_agnumber_t ag = NULLAGNUMBER;

 ip = ap->ip;
 mp = ip->i_mount;
 cache = mp->m_filestream;
 minlen = ap->alen;
 *agp = NULLAGNUMBER;





 file = xfs_mru_cache_remove(cache, ip->i_ino);
 if (file) {
  ASSERT(ip == file->ip);


  pip = file->pip;
  ag = file->ag;


  dir = xfs_mru_cache_lookup(cache, pip->i_ino);
  if (dir) {
   ASSERT(pip == dir->ip);







   if (dir->ag != file->ag) {
    xfs_filestream_put_ag(mp, file->ag);
    xfs_filestream_get_ag(mp, dir->ag);
    *agp = file->ag = dir->ag;
   }

   xfs_mru_cache_done(cache);
  }






  err = xfs_mru_cache_insert(cache, ip->i_ino, file);
  if (err) {
   xfs_fstrm_free_func(ip->i_ino, file);
   return err;
  }





  if (*agp != NULLAGNUMBER) {
   TRACE_MOVEAG(mp, ip, pip,
     ag, xfs_filestream_peek_ag(mp, ag),
     *agp, xfs_filestream_peek_ag(mp, *agp));
   return 0;
  }
 }
 if (pip)
  xfs_ilock(pip, XFS_IOLOCK_EXCL | XFS_IOLOCK_PARENT);






 ag = (ag == NULLAGNUMBER) ? 0 : (ag + 1) % mp->m_sb.sb_agcount;
 flags = (ap->userdata ? XFS_PICK_USERDATA : 0) |
         (ap->low ? XFS_PICK_LOWSPACE : 0);

 err = _xfs_filestream_pick_ag(mp, ag, agp, flags, minlen);
 if (err || *agp == NULLAGNUMBER)
  goto exit;
 if (!pip) {
  TRACE_ORPHAN(mp, ip, *agp);
  goto exit;
 }


 err = _xfs_filestream_update_ag(pip, ((void*)0), *agp);
 if (err)
  goto exit;


 err = _xfs_filestream_update_ag(ip, pip, *agp);
 if (err)
  goto exit;

 TRACE_MOVEAG(mp, ip, pip, NULLAGNUMBER, 0,
   *agp, xfs_filestream_peek_ag(mp, *agp));

exit:





 if (*agp != NULLAGNUMBER)
  xfs_filestream_put_ag(mp, *agp);
 else
  *agp = 0;

 if (pip)
  xfs_iunlock(pip, XFS_IOLOCK_EXCL);

 return err;
}
