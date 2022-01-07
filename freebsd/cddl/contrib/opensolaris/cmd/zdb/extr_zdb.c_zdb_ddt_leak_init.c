
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int zcb_dedup_asize; int zcb_dedup_blocks; } ;
typedef TYPE_1__ zdb_cb_t ;
struct TYPE_16__ {int ** spa_ddt; } ;
typedef TYPE_2__ spa_t ;
typedef int ddt_t ;
struct TYPE_17__ {scalar_t__ ddp_phys_birth; int ddp_refcnt; } ;
typedef TYPE_3__ ddt_phys_t ;
struct TYPE_18__ {int dde_key; TYPE_3__* dde_phys; } ;
typedef TYPE_4__ ddt_entry_t ;
struct TYPE_19__ {scalar_t__ ddb_class; size_t ddb_checksum; } ;
typedef TYPE_5__ ddt_bookmark_t ;
typedef int ddb ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 int BP_GET_ASIZE (int *) ;
 int B_TRUE ;
 scalar_t__ DDT_CLASS_UNIQUE ;
 int DDT_PHYS_DITTO ;
 int DDT_PHYS_TYPES ;
 int ENOENT ;
 int VERIFY (int ) ;
 int ZDB_OT_DITTO ;
 int bzero (TYPE_5__*,int) ;
 int ddt_bp_create (size_t,int *,TYPE_3__*,int *) ;
 int ddt_enter (int *) ;
 int ddt_exit (int *) ;
 int * ddt_lookup (int *,int *,int ) ;
 int ddt_phys_total_refcnt (TYPE_4__*) ;
 int ddt_walk (TYPE_2__*,TYPE_5__*,TYPE_4__*) ;
 int * dump_opt ;
 int zdb_count_block (TYPE_1__*,int *,int *,int ) ;

__attribute__((used)) static void
zdb_ddt_leak_init(spa_t *spa, zdb_cb_t *zcb)
{
 ddt_bookmark_t ddb;
 ddt_entry_t dde;
 int error;

 bzero(&ddb, sizeof (ddb));
 while ((error = ddt_walk(spa, &ddb, &dde)) == 0) {
  blkptr_t blk;
  ddt_phys_t *ddp = dde.dde_phys;

  if (ddb.ddb_class == DDT_CLASS_UNIQUE)
   return;

  ASSERT(ddt_phys_total_refcnt(&dde) > 1);

  for (int p = 0; p < DDT_PHYS_TYPES; p++, ddp++) {
   if (ddp->ddp_phys_birth == 0)
    continue;
   ddt_bp_create(ddb.ddb_checksum,
       &dde.dde_key, ddp, &blk);
   if (p == DDT_PHYS_DITTO) {
    zdb_count_block(zcb, ((void*)0), &blk, ZDB_OT_DITTO);
   } else {
    zcb->zcb_dedup_asize +=
        BP_GET_ASIZE(&blk) * (ddp->ddp_refcnt - 1);
    zcb->zcb_dedup_blocks++;
   }
  }
  if (!dump_opt['L']) {
   ddt_t *ddt = spa->spa_ddt[ddb.ddb_checksum];
   ddt_enter(ddt);
   VERIFY(ddt_lookup(ddt, &blk, B_TRUE) != ((void*)0));
   ddt_exit(ddt);
  }
 }

 ASSERT(error == ENOENT);
}
