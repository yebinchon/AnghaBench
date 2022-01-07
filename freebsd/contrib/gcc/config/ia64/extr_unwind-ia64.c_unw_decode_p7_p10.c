
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;


 int P10 ;
 int P7 ;
 int P8 ;
 int P9 ;
 int UNW_DEC_ABI (int ,unsigned char,unsigned char,void*) ;
 int UNW_DEC_BAD_CODE (unsigned char) ;
 int UNW_DEC_GR_GR (int ,unsigned char,unsigned char,void*) ;
 int UNW_DEC_MEM_STACK_F (int ,int ,int ,void*) ;
 int UNW_DEC_MEM_STACK_V (int ,int ,void*) ;
 int UNW_DEC_PRIUNAT_PSPREL (int ,int ,void*) ;
 int UNW_DEC_PRIUNAT_SPREL (int ,int ,void*) ;
 int UNW_DEC_PRIUNAT_WHEN_GR (int ,int ,void*) ;
 int UNW_DEC_PRIUNAT_WHEN_MEM (int ,int ,void*) ;
 int UNW_DEC_REG_PSPREL (int ,int ,int ,void*) ;
 int UNW_DEC_REG_SPREL (int ,int ,int ,void*) ;
 int UNW_DEC_REG_WHEN (int ,int ,int ,void*) ;
 int UNW_DEC_SPILL_BASE (int ,int ,void*) ;
 int UNW_REG_BSP ;
 int UNW_REG_BSPSTORE ;
 int UNW_REG_FPSR ;
 int UNW_REG_LC ;
 int UNW_REG_PFS ;
 int UNW_REG_PR ;
 int UNW_REG_PSP ;
 int UNW_REG_RNAT ;
 int UNW_REG_RP ;
 int UNW_REG_UNAT ;
 int unw_decode_uleb128 (unsigned char**) ;
 unsigned char* unw_decode_x1 (unsigned char*,unsigned char,void*) ;
 unsigned char* unw_decode_x2 (unsigned char*,unsigned char,void*) ;
 unsigned char* unw_decode_x3 (unsigned char*,unsigned char,void*) ;
 unsigned char* unw_decode_x4 (unsigned char*,unsigned char,void*) ;

__attribute__((used)) static unsigned char *
unw_decode_p7_p10 (unsigned char *dp, unsigned char code, void *arg)
{
  unsigned char r, byte1, byte2;
  unw_word t, size;

  if ((code & 0x10) == 0)
    {
      r = (code & 0xf);
      t = unw_decode_uleb128 (&dp);
      switch (r)
 {
 case 0:
   size = unw_decode_uleb128 (&dp);
   UNW_DEC_MEM_STACK_F(P7, t, size, arg);
   break;

 case 1: UNW_DEC_MEM_STACK_V(P7, t, arg); break;
 case 2: UNW_DEC_SPILL_BASE(P7, t, arg); break;
 case 3: UNW_DEC_REG_SPREL(P7, UNW_REG_PSP, t, arg); break;
 case 4: UNW_DEC_REG_WHEN(P7, UNW_REG_RP, t, arg); break;
 case 5: UNW_DEC_REG_PSPREL(P7, UNW_REG_RP, t, arg); break;
 case 6: UNW_DEC_REG_WHEN(P7, UNW_REG_PFS, t, arg); break;
 case 7: UNW_DEC_REG_PSPREL(P7, UNW_REG_PFS, t, arg); break;
 case 8: UNW_DEC_REG_WHEN(P7, UNW_REG_PR, t, arg); break;
 case 9: UNW_DEC_REG_PSPREL(P7, UNW_REG_PR, t, arg); break;
 case 10: UNW_DEC_REG_WHEN(P7, UNW_REG_LC, t, arg); break;
 case 11: UNW_DEC_REG_PSPREL(P7, UNW_REG_LC, t, arg); break;
 case 12: UNW_DEC_REG_WHEN(P7, UNW_REG_UNAT, t, arg); break;
 case 13: UNW_DEC_REG_PSPREL(P7, UNW_REG_UNAT, t, arg); break;
 case 14: UNW_DEC_REG_WHEN(P7, UNW_REG_FPSR, t, arg); break;
 case 15: UNW_DEC_REG_PSPREL(P7, UNW_REG_FPSR, t, arg); break;
 default: UNW_DEC_BAD_CODE(r); break;
 }
    }
  else
    {
      switch (code & 0xf)
 {
 case 0x0:
   {
     r = *dp++;
     t = unw_decode_uleb128 (&dp);
     switch (r)
       {
       case 1: UNW_DEC_REG_SPREL(P8, UNW_REG_RP, t, arg); break;
       case 2: UNW_DEC_REG_SPREL(P8, UNW_REG_PFS, t, arg); break;
       case 3: UNW_DEC_REG_SPREL(P8, UNW_REG_PR, t, arg); break;
       case 4: UNW_DEC_REG_SPREL(P8, UNW_REG_LC, t, arg); break;
       case 5: UNW_DEC_REG_SPREL(P8, UNW_REG_UNAT, t, arg); break;
       case 6: UNW_DEC_REG_SPREL(P8, UNW_REG_FPSR, t, arg); break;
       case 7: UNW_DEC_REG_WHEN(P8, UNW_REG_BSP, t, arg); break;
       case 8: UNW_DEC_REG_PSPREL(P8, UNW_REG_BSP, t, arg); break;
       case 9: UNW_DEC_REG_SPREL(P8, UNW_REG_BSP, t, arg); break;
       case 10: UNW_DEC_REG_WHEN(P8, UNW_REG_BSPSTORE, t, arg); break;
       case 11: UNW_DEC_REG_PSPREL(P8, UNW_REG_BSPSTORE, t, arg); break;
       case 12: UNW_DEC_REG_SPREL(P8, UNW_REG_BSPSTORE, t, arg); break;
       case 13: UNW_DEC_REG_WHEN(P8, UNW_REG_RNAT, t, arg); break;
       case 14: UNW_DEC_REG_PSPREL(P8, UNW_REG_RNAT, t, arg); break;
       case 15: UNW_DEC_REG_SPREL(P8, UNW_REG_RNAT, t, arg); break;
       case 16: UNW_DEC_PRIUNAT_WHEN_GR(P8, t, arg); break;
       case 17: UNW_DEC_PRIUNAT_PSPREL(P8, t, arg); break;
       case 18: UNW_DEC_PRIUNAT_SPREL(P8, t, arg); break;
       case 19: UNW_DEC_PRIUNAT_WHEN_MEM(P8, t, arg); break;
       default: UNW_DEC_BAD_CODE(r); break;
     }
   }
   break;

 case 0x1:
   byte1 = *dp++; byte2 = *dp++;
   UNW_DEC_GR_GR(P9, (byte1 & 0xf), (byte2 & 0x7f), arg);
   break;

 case 0xf:
   byte1 = *dp++; byte2 = *dp++;
   UNW_DEC_ABI(P10, byte1, byte2, arg);
   break;

 case 0x9:
   return unw_decode_x1 (dp, code, arg);

 case 0xa:
   return unw_decode_x2 (dp, code, arg);

 case 0xb:
   return unw_decode_x3 (dp, code, arg);

 case 0xc:
   return unw_decode_x4 (dp, code, arg);

 default:
   UNW_DEC_BAD_CODE(code);
   break;
 }
    }
  return dp;
}
