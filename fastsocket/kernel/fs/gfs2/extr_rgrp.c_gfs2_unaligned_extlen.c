
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct gfs2_rbm {int dummy; } ;


 scalar_t__ GFS2_BLKST_FREE ;
 scalar_t__ gfs2_rbm_from_block (struct gfs2_rbm*,scalar_t__) ;
 scalar_t__ gfs2_rbm_to_block (struct gfs2_rbm*) ;
 scalar_t__ gfs2_testbit (struct gfs2_rbm*) ;

__attribute__((used)) static bool gfs2_unaligned_extlen(struct gfs2_rbm *rbm, u32 n_unaligned, u32 *len)
{
 u64 block;
 u32 n;
 u8 res;

 for (n = 0; n < n_unaligned; n++) {
  res = gfs2_testbit(rbm);
  if (res != GFS2_BLKST_FREE)
   return 1;
  (*len)--;
  if (*len == 0)
   return 1;
  block = gfs2_rbm_to_block(rbm);
  if (gfs2_rbm_from_block(rbm, block + 1))
   return 1;
 }

 return 0;
}
