
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_irq_thread_msg {int demosaicStatus; } ;
struct vfe_frame_bpc_info {int RedBlueBadPixelCount; int redBlueDefectPixelCount; int greenBadPixelCount; int greenDefectPixelCount; } ;
struct vfe_bps_info {int RedBlueBadPixelCount; int redBlueDefectPixelCount; int greenBadPixelCount; int greenDefectPixelCount; } ;
typedef int rc ;
typedef int bpcInfoTemp ;


 int memset (struct vfe_frame_bpc_info*,int ,int) ;

__attribute__((used)) static struct vfe_frame_bpc_info
vfe_get_demosaic_frame_info(struct vfe_irq_thread_msg *in)
{
 struct vfe_bps_info bpcInfoTemp;
 struct vfe_frame_bpc_info rc;

 memset(&rc, 0, sizeof(rc));
 memset(&bpcInfoTemp, 0, sizeof(bpcInfoTemp));

 bpcInfoTemp =
  *((struct vfe_bps_info *)(&(in->demosaicStatus)));

 rc.greenDefectPixelCount =
  bpcInfoTemp.greenBadPixelCount;

 rc.redBlueDefectPixelCount =
  bpcInfoTemp.RedBlueBadPixelCount;

 return rc;
}
