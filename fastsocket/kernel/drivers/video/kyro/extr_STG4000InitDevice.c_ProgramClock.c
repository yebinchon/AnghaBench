
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int STG4K3_PLL_MAXR_VCO ;
 int STG4K3_PLL_MAX_F ;
 int STG4K3_PLL_MAX_R ;
 int STG4K3_PLL_MAX_VCO ;
 int STG4K3_PLL_MINR_VCO ;
 int STG4K3_PLL_MIN_F ;
 int STG4K3_PLL_MIN_R ;
 int STG4K3_PLL_SCALER ;

u32 ProgramClock(u32 refClock,
     u32 coreClock,
     u32 * FOut, u32 * ROut, u32 * POut)
{
 u32 R = 0, F = 0, OD = 0, ODIndex = 0;
 u32 ulBestR = 0, ulBestF = 0, ulBestOD = 0;
 u32 ulBestVCO = 0, ulBestClk = 0, ulBestScore = 0;
 u32 ulScore, ulPhaseScore, ulVcoScore;
 u32 ulTmp = 0, ulVCO;
 u32 ulScaleClockReq, ulMinClock, ulMaxClock;
 u32 ODValues[] = { 1, 2, 0 };


 coreClock *= 100;
 refClock *= 1000;




 ulMinClock = coreClock - (coreClock >> 8);
 ulMaxClock = coreClock + (coreClock >> 8);


 ulScaleClockReq = coreClock >> STG4K3_PLL_SCALER;


 for (ODIndex = 0; ODIndex < 3; ODIndex++) {
  OD = ODValues[ODIndex];
  R = STG4K3_PLL_MIN_R;


  while (R <= STG4K3_PLL_MAX_R) {

   ulTmp = R * (ulScaleClockReq << OD);


   F = (u32)(ulTmp / (refClock >> STG4K3_PLL_SCALER));


   if (F > STG4K3_PLL_MIN_F)
    F--;







   while ((F >= STG4K3_PLL_MIN_F) &&
          (F <= STG4K3_PLL_MAX_F)) {

    ulVCO = refClock / R;
    ulVCO = F * ulVCO;







    if ((ulVCO >= STG4K3_PLL_MINR_VCO) &&
        ((ulVCO <= STG4K3_PLL_MAXR_VCO) ||
         ((coreClock > STG4K3_PLL_MAXR_VCO)
          && (ulVCO <= STG4K3_PLL_MAX_VCO)))) {
     ulTmp = (ulVCO >> OD);


     if ((ulTmp >= ulMinClock)
         && (ulTmp <= ulMaxClock)) {
      ulPhaseScore = (((refClock / R) - (refClock / STG4K3_PLL_MAX_R))) / ((refClock - (refClock / STG4K3_PLL_MAX_R)) >> 10);

      ulVcoScore = ((ulVCO - STG4K3_PLL_MINR_VCO)) / ((STG4K3_PLL_MAXR_VCO - STG4K3_PLL_MINR_VCO) >> 10);
      ulScore = ulPhaseScore + ulVcoScore;

      if (!ulBestScore) {
       ulBestVCO = ulVCO;
       ulBestOD = OD;
       ulBestF = F;
       ulBestR = R;
       ulBestClk = ulTmp;
       ulBestScore =
           ulScore;
      }
      if ((ulScore >= ulBestScore) && (OD > 0)) {
       ulBestVCO = ulVCO;
       ulBestOD = OD;
       ulBestF = F;
       ulBestR = R;
       ulBestClk = ulTmp;
       ulBestScore =
           ulScore;
      }
     }
    }
    F++;
   }
   R++;
  }
 }





 if (ulBestScore) {
  *ROut = ulBestR;
  *FOut = ulBestF;

  if ((ulBestOD == 2) || (ulBestOD == 3)) {
   *POut = 3;
  } else
   *POut = ulBestOD;

 }

 return (ulBestClk);
}
