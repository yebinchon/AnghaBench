
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vme_width_t ;
typedef int vme_cycle_t ;
typedef int vme_address_t ;
typedef int u32 ;


 int EINVAL ;
 int TSI148_LCSR_DDAT_2eSSTM_160 ;
 int TSI148_LCSR_DDAT_2eSSTM_267 ;
 int TSI148_LCSR_DDAT_2eSSTM_320 ;
 int TSI148_LCSR_DDAT_AMODE_A16 ;
 int TSI148_LCSR_DDAT_AMODE_A24 ;
 int TSI148_LCSR_DDAT_AMODE_A32 ;
 int TSI148_LCSR_DDAT_AMODE_A64 ;
 int TSI148_LCSR_DDAT_AMODE_CRCSR ;
 int TSI148_LCSR_DDAT_AMODE_USER1 ;
 int TSI148_LCSR_DDAT_AMODE_USER2 ;
 int TSI148_LCSR_DDAT_AMODE_USER3 ;
 int TSI148_LCSR_DDAT_AMODE_USER4 ;
 int TSI148_LCSR_DDAT_DBW_16 ;
 int TSI148_LCSR_DDAT_DBW_32 ;
 int TSI148_LCSR_DDAT_PGM ;
 int TSI148_LCSR_DDAT_SUP ;
 int TSI148_LCSR_DDAT_TM_2eSST ;
 int TSI148_LCSR_DDAT_TM_2eSSTB ;
 int TSI148_LCSR_DDAT_TM_2eVME ;
 int TSI148_LCSR_DDAT_TM_BLT ;
 int TSI148_LCSR_DDAT_TM_MBLT ;
 int TSI148_LCSR_DDAT_TM_SCT ;
 int VME_2eSST ;



 int VME_2eSSTB ;
 int VME_2eVME ;




 int VME_BLT ;



 int VME_MBLT ;
 int VME_PROG ;
 int VME_SCT ;
 int VME_SUPER ;




 int printk (char*) ;

__attribute__((used)) static int tsi148_dma_set_vme_dest_attributes(u32 *attr, vme_address_t aspace,
 vme_cycle_t cycle, vme_width_t dwidth)
{

 switch (cycle & (141 | 140 | 139)) {
 case 141:
  *attr |= TSI148_LCSR_DDAT_2eSSTM_160;
  break;
 case 140:
  *attr |= TSI148_LCSR_DDAT_2eSSTM_267;
  break;
 case 139:
  *attr |= TSI148_LCSR_DDAT_2eSSTM_320;
  break;
 }


 if (cycle & VME_SCT) {
  *attr |= TSI148_LCSR_DDAT_TM_SCT;
 }
 if (cycle & VME_BLT) {
  *attr |= TSI148_LCSR_DDAT_TM_BLT;
 }
 if (cycle & VME_MBLT) {
  *attr |= TSI148_LCSR_DDAT_TM_MBLT;
 }
 if (cycle & VME_2eVME) {
  *attr |= TSI148_LCSR_DDAT_TM_2eVME;
 }
 if (cycle & VME_2eSST) {
  *attr |= TSI148_LCSR_DDAT_TM_2eSST;
 }
 if (cycle & VME_2eSSTB) {
  printk("Currently not setting Broadcast Select Registers\n");
  *attr |= TSI148_LCSR_DDAT_TM_2eSSTB;
 }


 switch (dwidth) {
 case 133:
  *attr |= TSI148_LCSR_DDAT_DBW_16;
  break;
 case 132:
  *attr |= TSI148_LCSR_DDAT_DBW_32;
  break;
 default:
  printk("Invalid data width\n");
  return -EINVAL;
 }


 switch (aspace) {
 case 138:
  *attr |= TSI148_LCSR_DDAT_AMODE_A16;
  break;
 case 137:
  *attr |= TSI148_LCSR_DDAT_AMODE_A24;
  break;
 case 136:
  *attr |= TSI148_LCSR_DDAT_AMODE_A32;
  break;
 case 135:
  *attr |= TSI148_LCSR_DDAT_AMODE_A64;
  break;
 case 134:
  *attr |= TSI148_LCSR_DDAT_AMODE_CRCSR;
  break;
 case 131:
  *attr |= TSI148_LCSR_DDAT_AMODE_USER1;
  break;
 case 130:
  *attr |= TSI148_LCSR_DDAT_AMODE_USER2;
  break;
 case 129:
  *attr |= TSI148_LCSR_DDAT_AMODE_USER3;
  break;
 case 128:
  *attr |= TSI148_LCSR_DDAT_AMODE_USER4;
  break;
 default:
  printk("Invalid address space\n");
  return -EINVAL;
  break;
 }

 if (cycle & VME_SUPER)
  *attr |= TSI148_LCSR_DDAT_SUP;
 if (cycle & VME_PROG)
  *attr |= TSI148_LCSR_DDAT_PGM;

 return 0;
}
