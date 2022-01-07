
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int sb_agblocks; scalar_t__ sb_agcount; } ;
struct TYPE_13__ {TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef int xfs_extlen_t ;
typedef scalar_t__ xfs_agnumber_t ;
struct xfs_perag {int pagf_freeblks; int pagf_fstrms; int pagf_metadata; int pagf_init; } ;


 scalar_t__ NULLAGNUMBER ;
 int TRACE_AG_PICK1 (TYPE_2__*,scalar_t__,int) ;
 int TRACE_AG_PICK2 (TYPE_2__*,scalar_t__,scalar_t__,int,int,int,int) ;
 int TRACE_AG_SCAN (TYPE_2__*,scalar_t__,int) ;
 int XFS_ALLOC_FLAG_TRYLOCK ;
 int XFS_PICK_LOWSPACE ;
 int XFS_PICK_USERDATA ;
 int atomic_read (int *) ;
 int xfs_alloc_longest_free_extent (TYPE_2__*,struct xfs_perag*) ;
 int xfs_alloc_pagf_init (TYPE_2__*,int *,scalar_t__,int) ;
 int xfs_filestream_get_ag (TYPE_2__*,scalar_t__) ;
 int xfs_filestream_put_ag (TYPE_2__*,scalar_t__) ;
 struct xfs_perag* xfs_perag_get (TYPE_2__*,scalar_t__) ;
 int xfs_perag_put (struct xfs_perag*) ;

__attribute__((used)) static int
_xfs_filestream_pick_ag(
 xfs_mount_t *mp,
 xfs_agnumber_t startag,
 xfs_agnumber_t *agp,
 int flags,
 xfs_extlen_t minlen)
{
 int streams, max_streams;
 int err, trylock, nscan;
 xfs_extlen_t longest, free, minfree, maxfree = 0;
 xfs_agnumber_t ag, max_ag = NULLAGNUMBER;
 struct xfs_perag *pag;


 minfree = mp->m_sb.sb_agblocks / 50;

 ag = startag;
 *agp = NULLAGNUMBER;


 trylock = XFS_ALLOC_FLAG_TRYLOCK;

 for (nscan = 0; 1; nscan++) {
  pag = xfs_perag_get(mp, ag);
  TRACE_AG_SCAN(mp, ag, atomic_read(&pag->pagf_fstrms));

  if (!pag->pagf_init) {
   err = xfs_alloc_pagf_init(mp, ((void*)0), ag, trylock);
   if (err && !trylock) {
    xfs_perag_put(pag);
    return err;
   }
  }


  if (!pag->pagf_init)
   goto next_ag;


  if (pag->pagf_freeblks > maxfree) {
   maxfree = pag->pagf_freeblks;
   max_streams = atomic_read(&pag->pagf_fstrms);
   max_ag = ag;
  }







  if (xfs_filestream_get_ag(mp, ag) > 1) {
   xfs_filestream_put_ag(mp, ag);
   goto next_ag;
  }

  longest = xfs_alloc_longest_free_extent(mp, pag);
  if (((minlen && longest >= minlen) ||
       (!minlen && pag->pagf_freeblks >= minfree)) &&
      (!pag->pagf_metadata || !(flags & XFS_PICK_USERDATA) ||
       (flags & XFS_PICK_LOWSPACE))) {


   free = pag->pagf_freeblks;
   streams = atomic_read(&pag->pagf_fstrms);
   xfs_perag_put(pag);
   *agp = ag;
   break;
  }


  xfs_filestream_put_ag(mp, ag);
next_ag:
  xfs_perag_put(pag);

  if (++ag >= mp->m_sb.sb_agcount)
   ag = 0;


  if (ag != startag)
   continue;


  if (trylock != 0) {
   trylock = 0;
   continue;
  }


  if (!(flags & XFS_PICK_LOWSPACE)) {
   flags |= XFS_PICK_LOWSPACE;
   continue;
  }





  if (max_ag != NULLAGNUMBER) {
   xfs_filestream_get_ag(mp, max_ag);
   TRACE_AG_PICK1(mp, max_ag, maxfree);
   streams = max_streams;
   free = maxfree;
   *agp = max_ag;
   break;
  }


  TRACE_AG_PICK1(mp, max_ag, maxfree);
  *agp = 0;
  return 0;
 }

 TRACE_AG_PICK2(mp, startag, *agp, streams, free, nscan, flags);

 return 0;
}
