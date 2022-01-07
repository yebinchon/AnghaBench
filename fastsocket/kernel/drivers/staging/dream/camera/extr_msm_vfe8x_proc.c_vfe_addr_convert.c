
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int awbBuffer; } ;
struct TYPE_9__ {int afBuffer; } ;
struct TYPE_8__ {int pmData; int frameCounter; int asfInfo; int bpcInfo; int cbcrBuffer; int yBuffer; } ;
struct TYPE_7__ {int pmData; int frameCounter; int asfInfo; int bpcInfo; int cbcrBuffer; int yBuffer; } ;
struct TYPE_11__ {TYPE_4__ msgStatsWbExp; TYPE_3__ msgStatsAf; TYPE_2__ msgOutput2; TYPE_1__ msgOutput1; } ;
struct vfe_message {TYPE_5__ _u; } ;
struct vfe_frame_extra {int pmData; int frameCounter; int asfInfo; int bpcInfo; } ;
struct msm_vfe_phy_info {int sbuf_phy; int cbcr_phy; int y_phy; } ;
typedef int int32_t ;
typedef enum vfe_resp_msg { ____Placeholder_vfe_resp_msg } vfe_resp_msg ;
struct TYPE_12__ {int extlen; void* extdata; } ;


 int CDBG (char*,int ) ;




 TYPE_6__* ctrl ;

__attribute__((used)) static void vfe_addr_convert(struct msm_vfe_phy_info *pinfo,
 enum vfe_resp_msg type, void *data, void **ext, int32_t *elen)
{
 switch (type) {
 case 131: {
  pinfo->y_phy =
   ((struct vfe_message *)data)->_u.msgOutput1.yBuffer;
  pinfo->cbcr_phy =
   ((struct vfe_message *)data)->_u.msgOutput1.cbcrBuffer;

  ((struct vfe_frame_extra *)ctrl->extdata)->bpcInfo =
  ((struct vfe_message *)data)->_u.msgOutput1.bpcInfo;

  ((struct vfe_frame_extra *)ctrl->extdata)->asfInfo =
  ((struct vfe_message *)data)->_u.msgOutput1.asfInfo;

  ((struct vfe_frame_extra *)ctrl->extdata)->frameCounter =
  ((struct vfe_message *)data)->_u.msgOutput1.frameCounter;

  ((struct vfe_frame_extra *)ctrl->extdata)->pmData =
  ((struct vfe_message *)data)->_u.msgOutput1.pmData;

  *ext = ctrl->extdata;
  *elen = ctrl->extlen;
 }
  break;

 case 130: {
  pinfo->y_phy =
   ((struct vfe_message *)data)->_u.msgOutput2.yBuffer;
  pinfo->cbcr_phy =
   ((struct vfe_message *)data)->_u.msgOutput2.cbcrBuffer;

  CDBG("vfe_addr_convert, pinfo->y_phy = 0x%x\n", pinfo->y_phy);
  CDBG("vfe_addr_convert, pinfo->cbcr_phy = 0x%x\n",
   pinfo->cbcr_phy);

  ((struct vfe_frame_extra *)ctrl->extdata)->bpcInfo =
  ((struct vfe_message *)data)->_u.msgOutput2.bpcInfo;

  ((struct vfe_frame_extra *)ctrl->extdata)->asfInfo =
  ((struct vfe_message *)data)->_u.msgOutput2.asfInfo;

  ((struct vfe_frame_extra *)ctrl->extdata)->frameCounter =
  ((struct vfe_message *)data)->_u.msgOutput2.frameCounter;

  ((struct vfe_frame_extra *)ctrl->extdata)->pmData =
  ((struct vfe_message *)data)->_u.msgOutput2.pmData;

  *ext = ctrl->extdata;
  *elen = ctrl->extlen;
 }
  break;

 case 129:
  pinfo->sbuf_phy =
  ((struct vfe_message *)data)->_u.msgStatsAf.afBuffer;
  break;

 case 128:
  pinfo->sbuf_phy =
  ((struct vfe_message *)data)->_u.msgStatsWbExp.awbBuffer;
  break;

 default:
  break;
 }
}
