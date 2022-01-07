
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_pmem_region {unsigned long paddr; unsigned long y_off; unsigned long cbcr_off; } ;
struct axiout {unsigned long output1buffer1_y_phy; unsigned long output2buffer1_y_phy; } ;
struct axidata {int bufnum1; int bufnum2; struct msm_pmem_region* region; } ;


 int CDBG (char*,unsigned long,...) ;
 int OUTPUT_1 ;
 int OUTPUT_1_AND_2 ;
 int OUTPUT_2 ;

__attribute__((used)) static int vfe_7x_config_axi(int mode,
 struct axidata *ad, struct axiout *ao)
{
 struct msm_pmem_region *regptr;
 unsigned long *bptr;
 int cnt;

 int rc = 0;

 if (mode == OUTPUT_1 || mode == OUTPUT_1_AND_2) {
  regptr = ad->region;

  CDBG("bufnum1 = %d\n", ad->bufnum1);
  CDBG("config_axi1: O1, phy = 0x%lx, y_off = %d, cbcr_off =%d\n",
   regptr->paddr, regptr->y_off, regptr->cbcr_off);

  bptr = &ao->output1buffer1_y_phy;
  for (cnt = 0; cnt < ad->bufnum1; cnt++) {
   *bptr = regptr->paddr + regptr->y_off;
   bptr++;
   *bptr = regptr->paddr + regptr->cbcr_off;

   bptr++;
   regptr++;
  }

  regptr--;
  for (cnt = 0; cnt < (8 - ad->bufnum1); cnt++) {
   *bptr = regptr->paddr + regptr->y_off;
   bptr++;
   *bptr = regptr->paddr + regptr->cbcr_off;
   bptr++;
  }
 }

 if (mode == OUTPUT_2 || mode == OUTPUT_1_AND_2) {
  regptr = &(ad->region[ad->bufnum1]);

  CDBG("bufnum2 = %d\n", ad->bufnum2);
  CDBG("config_axi2: O2, phy = 0x%lx, y_off = %d, cbcr_off =%d\n",
   regptr->paddr, regptr->y_off, regptr->cbcr_off);

  bptr = &ao->output2buffer1_y_phy;
  for (cnt = 0; cnt < ad->bufnum2; cnt++) {
   *bptr = regptr->paddr + regptr->y_off;
   bptr++;
   *bptr = regptr->paddr + regptr->cbcr_off;

   bptr++;
   regptr++;
  }

  regptr--;
  for (cnt = 0; cnt < (8 - ad->bufnum2); cnt++) {
   *bptr = regptr->paddr + regptr->y_off;
   bptr++;
   *bptr = regptr->paddr + regptr->cbcr_off;
   bptr++;
  }
 }

 return rc;
}
