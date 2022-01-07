
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zb_level; scalar_t__ zb_object; int zb_blkid; } ;
typedef TYPE_1__ zbookmark_phys_t ;
typedef int uint64_t ;
struct TYPE_6__ {int dn_indblkshift; int dn_datablkszsec; } ;
typedef TYPE_2__ dnode_phys_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 int BP_GET_LSIZE (int const*) ;
 int SPA_BLKPTRSHIFT ;
 int SPA_MINBLOCKSHIFT ;

__attribute__((used)) static uint64_t
blkid2offset(const dnode_phys_t *dnp, const blkptr_t *bp,
    const zbookmark_phys_t *zb)
{
 if (dnp == ((void*)0)) {
  ASSERT(zb->zb_level < 0);
  if (zb->zb_object == 0)
   return (zb->zb_blkid);
  return (zb->zb_blkid * BP_GET_LSIZE(bp));
 }

 ASSERT(zb->zb_level >= 0);

 return ((zb->zb_blkid <<
     (zb->zb_level * (dnp->dn_indblkshift - SPA_BLKPTRSHIFT))) *
     dnp->dn_datablkszsec << SPA_MINBLOCKSHIFT);
}
