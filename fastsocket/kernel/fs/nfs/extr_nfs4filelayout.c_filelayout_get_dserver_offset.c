
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {int dummy; } ;
struct nfs4_filelayout_segment {int stripe_type; } ;
typedef int loff_t ;


 int BUG () ;
 struct nfs4_filelayout_segment* FILELAYOUT_LSEG (struct pnfs_layout_segment*) ;


 int filelayout_get_dense_offset (struct nfs4_filelayout_segment*,int ) ;

__attribute__((used)) static loff_t
filelayout_get_dserver_offset(struct pnfs_layout_segment *lseg, loff_t offset)
{
 struct nfs4_filelayout_segment *flseg = FILELAYOUT_LSEG(lseg);

 switch (flseg->stripe_type) {
 case 128:
  return offset;

 case 129:
  return filelayout_get_dense_offset(flseg, offset);
 }

 BUG();
}
