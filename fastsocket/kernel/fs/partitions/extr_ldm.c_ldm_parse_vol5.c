
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vblk_volu {int partition_type; int drive_hint; int guid; int size; int volume_state; int volume_type; } ;
struct TYPE_2__ {struct vblk_volu volu; } ;
struct vblk {TYPE_1__ vblk; } ;


 int BUG_ON (int) ;
 int const VBLK_FLAG_VOLU_DRIVE ;
 int const VBLK_FLAG_VOLU_ID1 ;
 int const VBLK_FLAG_VOLU_ID2 ;
 int const VBLK_FLAG_VOLU_SIZE ;
 scalar_t__ VBLK_SIZE_VOL5 ;
 int get_unaligned_be32 (int const*) ;
 int ldm_error (char*,int,...) ;
 int ldm_get_vnum (int const*) ;
 int ldm_get_vstr (int const*,int ,int) ;
 int ldm_relative (int const*,int,int,int) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static bool ldm_parse_vol5(const u8 *buffer, int buflen, struct vblk *vb)
{
 int r_objid, r_name, r_vtype, r_disable_drive_letter, r_child, r_size;
 int r_id1, r_id2, r_size2, r_drive, len;
 struct vblk_volu *volu;

 BUG_ON(!buffer || !vb);
 r_objid = ldm_relative(buffer, buflen, 0x18, 0);
 if (r_objid < 0) {
  ldm_error("r_objid %d < 0", r_objid);
  return 0;
 }
 r_name = ldm_relative(buffer, buflen, 0x18, r_objid);
 if (r_name < 0) {
  ldm_error("r_name %d < 0", r_name);
  return 0;
 }
 r_vtype = ldm_relative(buffer, buflen, 0x18, r_name);
 if (r_vtype < 0) {
  ldm_error("r_vtype %d < 0", r_vtype);
  return 0;
 }
 r_disable_drive_letter = ldm_relative(buffer, buflen, 0x18, r_vtype);
 if (r_disable_drive_letter < 0) {
  ldm_error("r_disable_drive_letter %d < 0",
    r_disable_drive_letter);
  return 0;
 }
 r_child = ldm_relative(buffer, buflen, 0x2D, r_disable_drive_letter);
 if (r_child < 0) {
  ldm_error("r_child %d < 0", r_child);
  return 0;
 }
 r_size = ldm_relative(buffer, buflen, 0x3D, r_child);
 if (r_size < 0) {
  ldm_error("r_size %d < 0", r_size);
  return 0;
 }
 if (buffer[0x12] & VBLK_FLAG_VOLU_ID1) {
  r_id1 = ldm_relative(buffer, buflen, 0x52, r_size);
  if (r_id1 < 0) {
   ldm_error("r_id1 %d < 0", r_id1);
   return 0;
  }
 } else
  r_id1 = r_size;
 if (buffer[0x12] & VBLK_FLAG_VOLU_ID2) {
  r_id2 = ldm_relative(buffer, buflen, 0x52, r_id1);
  if (r_id2 < 0) {
   ldm_error("r_id2 %d < 0", r_id2);
   return 0;
  }
 } else
  r_id2 = r_id1;
 if (buffer[0x12] & VBLK_FLAG_VOLU_SIZE) {
  r_size2 = ldm_relative(buffer, buflen, 0x52, r_id2);
  if (r_size2 < 0) {
   ldm_error("r_size2 %d < 0", r_size2);
   return 0;
  }
 } else
  r_size2 = r_id2;
 if (buffer[0x12] & VBLK_FLAG_VOLU_DRIVE) {
  r_drive = ldm_relative(buffer, buflen, 0x52, r_size2);
  if (r_drive < 0) {
   ldm_error("r_drive %d < 0", r_drive);
   return 0;
  }
 } else
  r_drive = r_size2;
 len = r_drive;
 if (len < 0) {
  ldm_error("len %d < 0", len);
  return 0;
 }
 len += VBLK_SIZE_VOL5;
 if (len > get_unaligned_be32(buffer + 0x14)) {
  ldm_error("len %d > BE32(buffer + 0x14) %d", len,
    get_unaligned_be32(buffer + 0x14));
  return 0;
 }
 volu = &vb->vblk.volu;
 ldm_get_vstr(buffer + 0x18 + r_name, volu->volume_type,
   sizeof(volu->volume_type));
 memcpy(volu->volume_state, buffer + 0x18 + r_disable_drive_letter,
   sizeof(volu->volume_state));
 volu->size = ldm_get_vnum(buffer + 0x3D + r_child);
 volu->partition_type = buffer[0x41 + r_size];
 memcpy(volu->guid, buffer + 0x42 + r_size, sizeof(volu->guid));
 if (buffer[0x12] & VBLK_FLAG_VOLU_DRIVE) {
  ldm_get_vstr(buffer + 0x52 + r_size, volu->drive_hint,
    sizeof(volu->drive_hint));
 }
 return 1;
}
