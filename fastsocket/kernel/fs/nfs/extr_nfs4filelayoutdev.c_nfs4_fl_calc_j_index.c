
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs4_filelayout_segment {TYPE_1__* dsaddr; scalar_t__ first_stripe_index; int stripe_unit; scalar_t__ pattern_offset; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int stripe_count; } ;


 struct nfs4_filelayout_segment* FILELAYOUT_LSEG (struct pnfs_layout_segment*) ;
 int do_div (scalar_t__,int ) ;

u32
nfs4_fl_calc_j_index(struct pnfs_layout_segment *lseg, loff_t offset)
{
 struct nfs4_filelayout_segment *flseg = FILELAYOUT_LSEG(lseg);
 u64 tmp;

 tmp = offset - flseg->pattern_offset;
 do_div(tmp, flseg->stripe_unit);
 tmp += flseg->first_stripe_index;
 return do_div(tmp, flseg->dsaddr->stripe_count);
}
