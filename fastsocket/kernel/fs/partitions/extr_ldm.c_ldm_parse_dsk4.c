
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vblk_disk {int disk_id; } ;
struct TYPE_2__ {struct vblk_disk disk; } ;
struct vblk {TYPE_1__ vblk; } ;


 int BUG_ON (int) ;
 int GUID_SIZE ;
 scalar_t__ VBLK_SIZE_DSK4 ;
 int get_unaligned_be32 (int const*) ;
 int ldm_relative (int const*,int,int,int) ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static bool ldm_parse_dsk4 (const u8 *buffer, int buflen, struct vblk *vb)
{
 int r_objid, r_name, len;
 struct vblk_disk *disk;

 BUG_ON (!buffer || !vb);

 r_objid = ldm_relative (buffer, buflen, 0x18, 0);
 r_name = ldm_relative (buffer, buflen, 0x18, r_objid);
 len = r_name;
 if (len < 0)
  return 0;

 len += VBLK_SIZE_DSK4;
 if (len != get_unaligned_be32(buffer + 0x14))
  return 0;

 disk = &vb->vblk.disk;
 memcpy (disk->disk_id, buffer + 0x18 + r_name, GUID_SIZE);
 return 1;
}
