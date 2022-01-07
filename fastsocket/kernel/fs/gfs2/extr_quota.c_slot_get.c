
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {unsigned int sd_quota_chunks; unsigned char** sd_quota_bitmap; unsigned int sd_quota_slots; } ;
struct gfs2_quota_data {unsigned int qd_slot; int qd_slot_count; TYPE_1__* qd_gl; } ;
struct TYPE_2__ {struct gfs2_sbd* gl_sbd; } ;


 int ENOSPC ;
 unsigned int PAGE_SIZE ;
 int qd_lru_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int slot_get(struct gfs2_quota_data *qd)
{
 struct gfs2_sbd *sdp = qd->qd_gl->gl_sbd;
 unsigned int c, o = 0, b;
 unsigned char byte = 0;

 spin_lock(&qd_lru_lock);

 if (qd->qd_slot_count++) {
  spin_unlock(&qd_lru_lock);
  return 0;
 }

 for (c = 0; c < sdp->sd_quota_chunks; c++)
  for (o = 0; o < PAGE_SIZE; o++) {
   byte = sdp->sd_quota_bitmap[c][o];
   if (byte != 0xFF)
    goto found;
  }

 goto fail;

found:
 for (b = 0; b < 8; b++)
  if (!(byte & (1 << b)))
   break;
 qd->qd_slot = c * (8 * PAGE_SIZE) + o * 8 + b;

 if (qd->qd_slot >= sdp->sd_quota_slots)
  goto fail;

 sdp->sd_quota_bitmap[c][o] |= 1 << b;

 spin_unlock(&qd_lru_lock);

 return 0;

fail:
 qd->qd_slot_count--;
 spin_unlock(&qd_lru_lock);
 return -ENOSPC;
}
