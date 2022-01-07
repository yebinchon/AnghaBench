
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct nvidia_par {int CrystalFreqKHz; } ;



__attribute__((used)) static void CalcVClock(int clockIn,
         int *clockOut, u32 * pllOut, struct nvidia_par *par)
{
 unsigned lowM, highM;
 unsigned DeltaNew, DeltaOld;
 unsigned VClk, Freq;
 unsigned M, N, P;

 DeltaOld = 0xFFFFFFFF;

 VClk = (unsigned)clockIn;

 if (par->CrystalFreqKHz == 13500) {
  lowM = 7;
  highM = 13;
 } else {
  lowM = 8;
  highM = 14;
 }

 for (P = 0; P <= 4; P++) {
  Freq = VClk << P;
  if ((Freq >= 128000) && (Freq <= 350000)) {
   for (M = lowM; M <= highM; M++) {
    N = ((VClk << P) * M) / par->CrystalFreqKHz;
    if (N <= 255) {
     Freq =
         ((par->CrystalFreqKHz * N) /
          M) >> P;
     if (Freq > VClk)
      DeltaNew = Freq - VClk;
     else
      DeltaNew = VClk - Freq;
     if (DeltaNew < DeltaOld) {
      *pllOut =
          (P << 16) | (N << 8) | M;
      *clockOut = Freq;
      DeltaOld = DeltaNew;
     }
    }
   }
  }
 }
}
