
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
struct TYPE_7__ {int ddt_checksum; } ;
typedef TYPE_1__ ddt_t ;
struct TYPE_8__ {scalar_t__ ddp_phys_birth; scalar_t__ ddp_refcnt; } ;
typedef TYPE_2__ ddt_phys_t ;
typedef int ddt_key_t ;
struct TYPE_9__ {int dde_key; TYPE_2__* dde_phys; } ;
typedef TYPE_3__ ddt_entry_t ;
typedef int blkptr_t ;
typedef int blkbuf ;


 int BP_SPRINTF_LEN ;
 int DDT_PHYS_TYPES ;
 int ddt_bp_create (int ,int const*,TYPE_2__ const*,int *) ;
 int printf (char*,int ,int ,char const*,char*) ;
 int snprintf_blkptr (char*,int,int *) ;

__attribute__((used)) static void
dump_dde(const ddt_t *ddt, const ddt_entry_t *dde, uint64_t index)
{
 const ddt_phys_t *ddp = dde->dde_phys;
 const ddt_key_t *ddk = &dde->dde_key;
 const char *types[4] = { "ditto", "single", "double", "triple" };
 char blkbuf[BP_SPRINTF_LEN];
 blkptr_t blk;

 for (int p = 0; p < DDT_PHYS_TYPES; p++, ddp++) {
  if (ddp->ddp_phys_birth == 0)
   continue;
  ddt_bp_create(ddt->ddt_checksum, ddk, ddp, &blk);
  snprintf_blkptr(blkbuf, sizeof (blkbuf), &blk);
  (void) printf("index %llx refcnt %llu %s %s\n",
      (u_longlong_t)index, (u_longlong_t)ddp->ddp_refcnt,
      types[p], blkbuf);
 }
}
