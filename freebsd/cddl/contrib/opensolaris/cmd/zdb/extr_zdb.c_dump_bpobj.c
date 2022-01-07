
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uncomp ;
typedef int uint64_t ;
typedef char* u_longlong_t ;
typedef int objset_t ;
typedef int comp ;
typedef int bytes ;
struct TYPE_2__ {int bpo_num_blkptrs; scalar_t__ bpo_num_subobjs; scalar_t__ bpo_subobjs; int bpo_uncomp; int bpo_comp; int bpo_bytes; } ;
typedef TYPE_1__ bpobj_phys_t ;
typedef int bp ;
typedef int blkptr_t ;
typedef int blkbuf ;


 size_t BPOBJ_SIZE_V1 ;
 int BP_SPRINTF_LEN ;
 int CTASSERT (int) ;
 int NN_NUMBUF_SZ ;
 int dmu_read (int *,int,int,int,int *,int ) ;
 int* dump_opt ;
 int printf (char*,...) ;
 int snprintf_blkptr_compact (char*,int,int *) ;
 int zdb_nicenum (int ,char*,int) ;

__attribute__((used)) static void
dump_bpobj(objset_t *os, uint64_t object, void *data, size_t size)
{
 bpobj_phys_t *bpop = data;
 char bytes[32], comp[32], uncomp[32];


 CTASSERT(sizeof (bytes) >= NN_NUMBUF_SZ);
 CTASSERT(sizeof (comp) >= NN_NUMBUF_SZ);
 CTASSERT(sizeof (uncomp) >= NN_NUMBUF_SZ);

 if (bpop == ((void*)0))
  return;

 zdb_nicenum(bpop->bpo_bytes, bytes, sizeof (bytes));
 zdb_nicenum(bpop->bpo_comp, comp, sizeof (comp));
 zdb_nicenum(bpop->bpo_uncomp, uncomp, sizeof (uncomp));

 (void) printf("\t\tnum_blkptrs = %llu\n",
     (u_longlong_t)bpop->bpo_num_blkptrs);
 (void) printf("\t\tbytes = %s\n", bytes);
 if (size >= BPOBJ_SIZE_V1) {
  (void) printf("\t\tcomp = %s\n", comp);
  (void) printf("\t\tuncomp = %s\n", uncomp);
 }
 if (size >= sizeof (*bpop)) {
  (void) printf("\t\tsubobjs = %llu\n",
      (u_longlong_t)bpop->bpo_subobjs);
  (void) printf("\t\tnum_subobjs = %llu\n",
      (u_longlong_t)bpop->bpo_num_subobjs);
 }

 if (dump_opt['d'] < 5)
  return;

 for (uint64_t i = 0; i < bpop->bpo_num_blkptrs; i++) {
  char blkbuf[BP_SPRINTF_LEN];
  blkptr_t bp;

  int err = dmu_read(os, object,
      i * sizeof (bp), sizeof (bp), &bp, 0);
  if (err != 0) {
   (void) printf("got error %u from dmu_read\n", err);
   break;
  }
  snprintf_blkptr_compact(blkbuf, sizeof (blkbuf), &bp);
  (void) printf("\t%s\n", blkbuf);
 }
}
