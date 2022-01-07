
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vblk_dgrp {int disk_id; } ;
struct TYPE_2__ {struct vblk_dgrp dgrp; } ;
struct vblk {TYPE_1__ vblk; } ;


 int BUG_ON (int) ;
 int const VBLK_FLAG_DGR3_IDS ;
 scalar_t__ VBLK_SIZE_DGR3 ;
 int get_unaligned_be32 (int const*) ;
 int ldm_get_vstr (int const*,int ,int) ;
 int ldm_relative (int const*,int,int,int) ;

__attribute__((used)) static int ldm_parse_dgr3 (const u8 *buffer, int buflen, struct vblk *vb)
{
 int r_objid, r_name, r_diskid, r_id1, r_id2, len;
 struct vblk_dgrp *dgrp;

 BUG_ON (!buffer || !vb);

 r_objid = ldm_relative (buffer, buflen, 0x18, 0);
 r_name = ldm_relative (buffer, buflen, 0x18, r_objid);
 r_diskid = ldm_relative (buffer, buflen, 0x18, r_name);

 if (buffer[0x12] & VBLK_FLAG_DGR3_IDS) {
  r_id1 = ldm_relative (buffer, buflen, 0x24, r_diskid);
  r_id2 = ldm_relative (buffer, buflen, 0x24, r_id1);
  len = r_id2;
 } else {
  r_id1 = 0;
  r_id2 = 0;
  len = r_diskid;
 }
 if (len < 0)
  return 0;

 len += VBLK_SIZE_DGR3;
 if (len != get_unaligned_be32(buffer + 0x14))
  return 0;

 dgrp = &vb->vblk.dgrp;
 ldm_get_vstr (buffer + 0x18 + r_name, dgrp->disk_id,
  sizeof (dgrp->disk_id));
 return 1;
}
