
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union outputArgs {int dummy; } outputArgs ;
struct CodaFid {int dummy; } ;
struct TYPE_2__ {struct CodaFid VFid; } ;
union inputArgs {TYPE_1__ coda_fsync; } ;
struct super_block {int dummy; } ;


 int CODA_FREE (union inputArgs*,int) ;
 int CODA_FSYNC ;
 int SIZE (int ) ;
 int UPARG (int ) ;
 int coda_upcall (int ,int,int*,union inputArgs*) ;
 int coda_vcp (struct super_block*) ;
 int fsync ;

int venus_fsync(struct super_block *sb, struct CodaFid *fid)
{
        union inputArgs *inp;
        union outputArgs *outp;
 int insize, outsize, error;

 insize=SIZE(fsync);
 UPARG(CODA_FSYNC);

 inp->coda_fsync.VFid = *fid;
 error = coda_upcall(coda_vcp(sb), sizeof(union inputArgs),
       &outsize, inp);

 CODA_FREE(inp, insize);
 return error;
}
