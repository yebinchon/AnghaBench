
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct gfs2_blkreserv {int rs_free; int rs_rbm; } ;


 int gfs2_rbm_to_block (int *) ;

__attribute__((used)) static inline int rs_cmp(u64 blk, u32 len, struct gfs2_blkreserv *rs)
{
 u64 startblk = gfs2_rbm_to_block(&rs->rs_rbm);

 if (blk >= startblk + rs->rs_free)
  return 1;
 if (blk + len - 1 < startblk)
  return -1;
 return 0;
}
