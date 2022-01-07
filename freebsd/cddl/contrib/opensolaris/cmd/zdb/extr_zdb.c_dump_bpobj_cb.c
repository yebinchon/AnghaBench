
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dmu_tx_t ;
struct TYPE_4__ {scalar_t__ blk_birth; } ;
typedef TYPE_1__ blkptr_t ;
typedef int blkbuf ;


 int ASSERT (int) ;
 int BP_SPRINTF_LEN ;
 int printf (char*,char*) ;
 int snprintf_blkptr_compact (char*,int,TYPE_1__ const*) ;

__attribute__((used)) static int
dump_bpobj_cb(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
 char blkbuf[BP_SPRINTF_LEN];

 ASSERT(bp->blk_birth != 0);
 snprintf_blkptr_compact(blkbuf, sizeof (blkbuf), bp);
 (void) printf("\t%s\n", blkbuf);
 return (0);
}
