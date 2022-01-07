
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nilfs_segsum_pointer {unsigned int offset; TYPE_2__* bh; } ;
struct nilfs_segment_buffer {int sb_segsum_buffers; } ;
struct nilfs_sc_info {TYPE_1__* sc_super; struct nilfs_segment_buffer* sc_curseg; } ;
struct TYPE_6__ {void* b_data; } ;
struct TYPE_5__ {unsigned int s_blocksize; } ;


 int BUG_ON (int ) ;
 int NILFS_SEGBUF_BH_IS_LAST (TYPE_2__*,int *) ;
 TYPE_2__* NILFS_SEGBUF_NEXT_BH (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *nilfs_segctor_map_segsum_entry(struct nilfs_sc_info *sci,
         struct nilfs_segsum_pointer *ssp,
         unsigned bytes)
{
 struct nilfs_segment_buffer *segbuf = sci->sc_curseg;
 unsigned blocksize = sci->sc_super->s_blocksize;
 void *p;

 if (unlikely(ssp->offset + bytes > blocksize)) {
  ssp->offset = 0;
  BUG_ON(NILFS_SEGBUF_BH_IS_LAST(ssp->bh,
            &segbuf->sb_segsum_buffers));
  ssp->bh = NILFS_SEGBUF_NEXT_BH(ssp->bh);
 }
 p = ssp->bh->b_data + ssp->offset;
 ssp->offset += bytes;
 return p;
}
