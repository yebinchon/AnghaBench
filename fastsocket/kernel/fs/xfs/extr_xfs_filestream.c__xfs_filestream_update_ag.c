
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int xfs_mru_cache_t ;
struct TYPE_19__ {int * m_filestream; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_18__ {int di_mode; } ;
struct TYPE_20__ {int i_ino; TYPE_2__* i_mount; TYPE_1__ i_d; } ;
typedef TYPE_3__ xfs_inode_t ;
typedef scalar_t__ xfs_agnumber_t ;
struct TYPE_21__ {scalar_t__ ag; TYPE_3__* pip; TYPE_3__* ip; } ;
typedef TYPE_4__ fstrm_item_t ;


 int ASSERT (int) ;
 int ENOMEM ;
 int IHOLD (TYPE_3__*) ;
 int IRELE (TYPE_3__*) ;
 int KM_MAYFAIL ;
 int S_IFDIR ;
 int S_IFREG ;
 int TRACE_UPDATE (TYPE_2__*,TYPE_3__*,scalar_t__,int ,scalar_t__,int ) ;
 int item_zone ;
 int kmem_zone_free (int ,TYPE_4__*) ;
 TYPE_4__* kmem_zone_zalloc (int ,int ) ;
 int xfs_filestream_get_ag (TYPE_2__*,scalar_t__) ;
 int xfs_filestream_peek_ag (TYPE_2__*,scalar_t__) ;
 int xfs_filestream_put_ag (TYPE_2__*,scalar_t__) ;
 int xfs_mru_cache_done (int *) ;
 int xfs_mru_cache_insert (int *,int ,TYPE_4__*) ;
 TYPE_4__* xfs_mru_cache_lookup (int *,int ) ;

__attribute__((used)) static int
_xfs_filestream_update_ag(
 xfs_inode_t *ip,
 xfs_inode_t *pip,
 xfs_agnumber_t ag)
{
 int err = 0;
 xfs_mount_t *mp;
 xfs_mru_cache_t *cache;
 fstrm_item_t *item;
 xfs_agnumber_t old_ag;
 xfs_inode_t *old_pip;





 ASSERT(ip && (((ip->i_d.di_mode & S_IFREG) && pip &&
                (pip->i_d.di_mode & S_IFDIR)) ||
               ((ip->i_d.di_mode & S_IFDIR) && !pip)));

 mp = ip->i_mount;
 cache = mp->m_filestream;

 item = xfs_mru_cache_lookup(cache, ip->i_ino);
 if (item) {
  ASSERT(item->ip == ip);
  old_ag = item->ag;
  item->ag = ag;
  old_pip = item->pip;
  item->pip = pip;
  xfs_mru_cache_done(cache);





  if (ag != old_ag) {
   xfs_filestream_put_ag(mp, old_ag);
   xfs_filestream_get_ag(mp, ag);
  }





  if (pip && pip != old_pip) {
   IRELE(old_pip);
   IHOLD(pip);
  }

  TRACE_UPDATE(mp, ip, old_ag, xfs_filestream_peek_ag(mp, old_ag),
    ag, xfs_filestream_peek_ag(mp, ag));
  return 0;
 }

 item = kmem_zone_zalloc(item_zone, KM_MAYFAIL);
 if (!item)
  return ENOMEM;

 item->ag = ag;
 item->ip = ip;
 item->pip = pip;

 err = xfs_mru_cache_insert(cache, ip->i_ino, item);
 if (err) {
  kmem_zone_free(item_zone, item);
  return err;
 }


 xfs_filestream_get_ag(mp, ag);





 IHOLD(ip);





 if (pip)
  IHOLD(pip);

 TRACE_UPDATE(mp, ip, ag, xfs_filestream_peek_ag(mp, ag),
   ag, xfs_filestream_peek_ag(mp, ag));

 return 0;
}
