
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct nfsd4_write {TYPE_1__ wr_verifier; int wr_how_written; int wr_bytes_written; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int __be32 ;


 int ADJUST_ARGS () ;
 int RESERVE_SPACE (int) ;
 int WRITE32 (int ) ;
 int WRITEMEM (int ,int) ;

__attribute__((used)) static __be32
nfsd4_encode_write(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_write *write)
{
 __be32 *p;

 if (!nfserr) {
  RESERVE_SPACE(16);
  WRITE32(write->wr_bytes_written);
  WRITE32(write->wr_how_written);
  WRITEMEM(write->wr_verifier.data, 8);
  ADJUST_ARGS();
 }
 return nfserr;
}
