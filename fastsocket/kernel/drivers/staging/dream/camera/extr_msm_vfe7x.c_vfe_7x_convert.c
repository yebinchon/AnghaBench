
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vfe_frame_extra {int r_b_def_p_cnt; int g_def_p_cnt; int bl_oddcol; int bl_evencol; } ;
struct vfe_endframe {int redbluedefectpixelcount; int greendefectpixelcount; int blackleveloddcolumn; int blacklevelevencolumn; int cbcr_address; int y_address; } ;
struct msm_vfe_phy_info {int sbuf_phy; int cbcr_phy; int y_phy; } ;
typedef int int32_t ;
typedef enum vfe_resp_msg { ____Placeholder_vfe_resp_msg } vfe_resp_msg ;


 int CDBG (char*,int ,int ) ;




 void* extdata ;
 int extlen ;

__attribute__((used)) static void vfe_7x_convert(struct msm_vfe_phy_info *pinfo,
  enum vfe_resp_msg type,
  void *data, void **ext, int32_t *elen)
{
 switch (type) {
 case 131:
 case 130: {
  pinfo->y_phy = ((struct vfe_endframe *)data)->y_address;
  pinfo->cbcr_phy =
   ((struct vfe_endframe *)data)->cbcr_address;

  CDBG("vfe_7x_convert, y_phy = 0x%x, cbcr_phy = 0x%x\n",
     pinfo->y_phy, pinfo->cbcr_phy);

  ((struct vfe_frame_extra *)extdata)->bl_evencol =
  ((struct vfe_endframe *)data)->blacklevelevencolumn;

  ((struct vfe_frame_extra *)extdata)->bl_oddcol =
  ((struct vfe_endframe *)data)->blackleveloddcolumn;

  ((struct vfe_frame_extra *)extdata)->g_def_p_cnt =
  ((struct vfe_endframe *)data)->greendefectpixelcount;

  ((struct vfe_frame_extra *)extdata)->r_b_def_p_cnt =
  ((struct vfe_endframe *)data)->redbluedefectpixelcount;

  *ext = extdata;
  *elen = extlen;
 }
  break;

 case 129:
 case 128:
  pinfo->sbuf_phy = *(uint32_t *)data;
  break;

 default:
  break;
 }
}
