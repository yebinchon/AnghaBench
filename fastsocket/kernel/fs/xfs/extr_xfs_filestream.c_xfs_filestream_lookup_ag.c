
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xfs_mru_cache_t ;
struct TYPE_9__ {int di_mode; } ;
struct TYPE_10__ {TYPE_5__* i_mount; int i_ino; TYPE_1__ i_d; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef int xfs_agnumber_t ;
struct TYPE_11__ {int * pip; int ag; TYPE_2__* ip; } ;
typedef TYPE_3__ fstrm_item_t ;
struct TYPE_12__ {int * m_filestream; } ;


 int ASSERT (int) ;
 int NULLAGNUMBER ;
 int S_IFDIR ;
 int S_IFREG ;
 int TRACE_LOOKUP (TYPE_5__*,TYPE_2__*,int *,int ,int) ;
 int xfs_filestream_peek_ag (TYPE_5__*,int ) ;
 int xfs_mru_cache_done (int *) ;
 TYPE_3__* xfs_mru_cache_lookup (int *,int ) ;

xfs_agnumber_t
xfs_filestream_lookup_ag(
 xfs_inode_t *ip)
{
 xfs_mru_cache_t *cache;
 fstrm_item_t *item;
 xfs_agnumber_t ag;
 int ref;

 if (!(ip->i_d.di_mode & (S_IFREG | S_IFDIR))) {
  ASSERT(0);
  return NULLAGNUMBER;
 }

 cache = ip->i_mount->m_filestream;
 item = xfs_mru_cache_lookup(cache, ip->i_ino);
 if (!item) {
  TRACE_LOOKUP(ip->i_mount, ip, ((void*)0), NULLAGNUMBER, 0);
  return NULLAGNUMBER;
 }

 ASSERT(ip == item->ip);
 ag = item->ag;
 ref = xfs_filestream_peek_ag(ip->i_mount, ag);
 xfs_mru_cache_done(cache);

 TRACE_LOOKUP(ip->i_mount, ip, item->pip, ag, ref);
 return ag;
}
