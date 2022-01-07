
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct CodaFid {int dummy; } ;
struct TYPE_2__ {struct CodaFid VFid; } ;
union outputArgs {TYPE_1__ coda_root; } ;
typedef union inputArgs {int dummy; } inputArgs ;
struct super_block {int dummy; } ;


 int CODA_FREE (union inputArgs*,int) ;
 int CODA_ROOT ;
 int SIZE (int ) ;
 int UPARG (int ) ;
 int coda_upcall (int ,int,int*,union inputArgs*) ;
 int coda_vcp (struct super_block*) ;
 int root ;

int venus_rootfid(struct super_block *sb, struct CodaFid *fidp)
{
        union inputArgs *inp;
        union outputArgs *outp;
        int insize, outsize, error;

        insize = SIZE(root);
        UPARG(CODA_ROOT);

 error = coda_upcall(coda_vcp(sb), insize, &outsize, inp);
 if (!error)
  *fidp = outp->coda_root.VFid;

 CODA_FREE(inp, insize);
 return error;
}
