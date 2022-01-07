
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union outputArgs {int dummy; } outputArgs ;
struct CodaFid {int dummy; } ;
struct TYPE_2__ {int flags; struct CodaFid VFid; } ;
union inputArgs {TYPE_1__ coda_access; } ;
struct super_block {int dummy; } ;


 int CODA_ACCESS ;
 int CODA_FREE (union inputArgs*,int) ;
 int SIZE (int ) ;
 int UPARG (int ) ;
 int access ;
 int coda_upcall (int ,int,int*,union inputArgs*) ;
 int coda_vcp (struct super_block*) ;

int venus_access(struct super_block *sb, struct CodaFid *fid, int mask)
{
        union inputArgs *inp;
        union outputArgs *outp;
 int insize, outsize, error;

 insize = SIZE(access);
 UPARG(CODA_ACCESS);

        inp->coda_access.VFid = *fid;
        inp->coda_access.flags = mask;

 error = coda_upcall(coda_vcp(sb), insize, &outsize, inp);

 CODA_FREE(inp, insize);
 return error;
}
