
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_hw_state {unsigned int* DACclk; } ;




__attribute__((used)) static void updatehwstate_clk(struct matrox_hw_state* hw, unsigned int mnp, unsigned int pll) {
 switch (pll) {
  case 128:
   hw->DACclk[3] = mnp >> 16;
   hw->DACclk[4] = mnp >> 8;
   hw->DACclk[5] = mnp;
   break;
 }
}
