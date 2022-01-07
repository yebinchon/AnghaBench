
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgivw_par {int dummy; } ;


 int CTRLSTAT ;
 int DBE_GETREG (int ,unsigned int) ;
 int DBE_SETREG (int ,unsigned int) ;
 int DID_CONTROL ;
 int DID_DMA_ENABLE ;
 int DID_INHWCTRL ;
 int FRM_CONTROL ;
 int FRM_DMA_ENABLE ;
 int FRM_INHWCTRL ;
 int GET_DBE_FIELD (int ,int ,unsigned int) ;
 int OVR_CONTROL ;
 int OVR_DMA_ENABLE ;
 int OVR_INHWCTRL ;
 int PCLKSEL ;
 int SET_DBE_FIELD (int ,int ,unsigned int,int ) ;
 int VT_FREEZE ;
 int VT_XY ;
 int ctrlstat ;
 int did_control ;
 int did_inhwctrl ;
 int frm_control ;
 int frm_inhwctrl ;
 int ovr_control ;
 int ovr_inhwctrl ;
 int udelay (int) ;
 int vt_xy ;

__attribute__((used)) static void dbe_TurnOffDma(struct sgivw_par *par)
{
 unsigned int readVal;
 int i;





 DBE_GETREG(ctrlstat, readVal);
 if (GET_DBE_FIELD(CTRLSTAT, PCLKSEL, readVal) < 2)
  return;

 DBE_GETREG(vt_xy, readVal);
 if (GET_DBE_FIELD(VT_XY, VT_FREEZE, readVal) == 1)
  return;



 DBE_GETREG(ovr_control, readVal);
 SET_DBE_FIELD(OVR_CONTROL, OVR_DMA_ENABLE, readVal, 0);
 DBE_SETREG(ovr_control, readVal);
 udelay(1000);
 DBE_GETREG(frm_control, readVal);
 SET_DBE_FIELD(FRM_CONTROL, FRM_DMA_ENABLE, readVal, 0);
 DBE_SETREG(frm_control, readVal);
 udelay(1000);
 DBE_GETREG(did_control, readVal);
 SET_DBE_FIELD(DID_CONTROL, DID_DMA_ENABLE, readVal, 0);
 DBE_SETREG(did_control, readVal);
 udelay(1000);
 for (i = 0; i < 10000; i++) {
  DBE_GETREG(frm_inhwctrl, readVal);
  if (GET_DBE_FIELD(FRM_INHWCTRL, FRM_DMA_ENABLE, readVal) ==
      0)
   udelay(10);
  else {
   DBE_GETREG(ovr_inhwctrl, readVal);
   if (GET_DBE_FIELD
       (OVR_INHWCTRL, OVR_DMA_ENABLE, readVal) == 0)
    udelay(10);
   else {
    DBE_GETREG(did_inhwctrl, readVal);
    if (GET_DBE_FIELD
        (DID_INHWCTRL, DID_DMA_ENABLE,
         readVal) == 0)
     udelay(10);
    else
     break;
   }
  }
 }
}
