
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vblk {int flags; int type; scalar_t__ obj_id; int name; } ;


 int BUG_ON (int) ;







 int ldm_debug (char*,unsigned long long,int) ;
 int ldm_error (char*,...) ;
 scalar_t__ ldm_get_vnum (int const*) ;
 int ldm_get_vstr (int const*,int ,int) ;
 int ldm_parse_cmp3 (int const*,int,struct vblk*) ;
 int ldm_parse_dgr3 (int const*,int,struct vblk*) ;
 int ldm_parse_dgr4 (int const*,int,struct vblk*) ;
 int ldm_parse_dsk3 (int const*,int,struct vblk*) ;
 int ldm_parse_dsk4 (int const*,int,struct vblk*) ;
 int ldm_parse_prt3 (int const*,int,struct vblk*) ;
 int ldm_parse_vol5 (int const*,int,struct vblk*) ;
 int ldm_relative (int const*,int,int,int ) ;

__attribute__((used)) static bool ldm_parse_vblk (const u8 *buf, int len, struct vblk *vb)
{
 bool result = 0;
 int r_objid;

 BUG_ON (!buf || !vb);

 r_objid = ldm_relative (buf, len, 0x18, 0);
 if (r_objid < 0) {
  ldm_error ("VBLK header is corrupt.");
  return 0;
 }

 vb->flags = buf[0x12];
 vb->type = buf[0x13];
 vb->obj_id = ldm_get_vnum (buf + 0x18);
 ldm_get_vstr (buf+0x18+r_objid, vb->name, sizeof (vb->name));

 switch (vb->type) {
  case 134: result = ldm_parse_cmp3 (buf, len, vb); break;
  case 131: result = ldm_parse_dsk3 (buf, len, vb); break;
  case 130: result = ldm_parse_dsk4 (buf, len, vb); break;
  case 133: result = ldm_parse_dgr3 (buf, len, vb); break;
  case 132: result = ldm_parse_dgr4 (buf, len, vb); break;
  case 129: result = ldm_parse_prt3 (buf, len, vb); break;
  case 128: result = ldm_parse_vol5 (buf, len, vb); break;
 }

 if (result)
  ldm_debug ("Parsed VBLK 0x%llx (type: 0x%02x) ok.",
    (unsigned long long) vb->obj_id, vb->type);
 else
  ldm_error ("Failed to parse VBLK 0x%llx (type: 0x%02x).",
   (unsigned long long) vb->obj_id, vb->type);

 return result;
}
