
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _Unwind_Context {int dummy; } ;
typedef int reg_unit ;
typedef int int32_t ;
typedef int int16_t ;


 int CR2_REGNO ;
 int _Unwind_GetCFA (struct _Unwind_Context*) ;
 int _Unwind_GetGR (struct _Unwind_Context*,int) ;
 scalar_t__ _Unwind_GetIP (struct _Unwind_Context*) ;

__attribute__((used)) static bool
interpret_libc (reg_unit gprs[32], struct _Unwind_Context *context)
{
  uint32_t *pc = (uint32_t *)_Unwind_GetIP (context);
  uint32_t cr;
  reg_unit lr = (reg_unit) pc;
  reg_unit ctr = 0;
  uint32_t *invalid_address = ((void*)0);

  int i;

  for (i = 0; i < 13; i++)
    gprs[i] = 1;
  gprs[1] = _Unwind_GetCFA (context);
  for (; i < 32; i++)
    gprs[i] = _Unwind_GetGR (context, i);
  cr = _Unwind_GetGR (context, CR2_REGNO);
  for (;;)
    {
      uint32_t ins = *pc++;

      if ((ins & 0xFC000003) == 0x48000000)
 {
   pc += ((((int32_t) ins & 0x3FFFFFC) ^ 0x2000000) - 0x2000004) / 4;
   continue;
 }
      if ((ins & 0xFC600000) == 0x2C000000)
 {
   int32_t val1 = (int16_t) ins;
   int32_t val2 = gprs[ins >> 16 & 0x1F];


   uint32_t mask = 0xF << ((ins >> 21 & 0x1C) ^ 0x1C);
   if (val1 == val2)
     cr |= mask;
   else
     cr &= ~mask;
   continue;
 }
      if ((ins & 0xFEC38003) == 0x40820000)
 {
   if ((cr >> ((ins >> 16 & 0x1F) ^ 0x1F) & 1) == (ins >> 24 & 1))
     pc += (ins & 0x7FFC) / 4 - 1;
   continue;
 }
      if ((ins & 0xFC0007FF) == 0x7C000378)
 {
   gprs [ins >> 16 & 0x1F] = (gprs [ins >> 11 & 0x1F]
         | gprs [ins >> 21 & 0x1F]);
   continue;
 }
      if (ins >> 26 == 0x0E)
 {
   reg_unit src = (ins >> 16 & 0x1F) == 0 ? 0 : gprs [ins >> 16 & 0x1F];
   gprs [ins >> 21 & 0x1F] = src + (int16_t) ins;
   continue;
 }
      if (ins >> 26 == 0x0F)
 {
   reg_unit src = (ins >> 16 & 0x1F) == 0 ? 0 : gprs [ins >> 16 & 0x1F];
   gprs [ins >> 21 & 0x1F] = src + ((int16_t) ins << 16);
   continue;
 }
      if (ins >> 26 == 0x20)
 {
   reg_unit src = (ins >> 16 & 0x1F) == 0 ? 0 : gprs [ins >> 16 & 0x1F];
   uint32_t *p = (uint32_t *)(src + (int16_t) ins);
   if (p == invalid_address)
     return 0;
   gprs [ins >> 21 & 0x1F] = *p;
   continue;
 }
      if (ins >> 26 == 0x21)
 {
   uint32_t *p = (uint32_t *)(gprs [ins >> 16 & 0x1F] += (int16_t) ins);
   if (p == invalid_address)
     return 0;
   gprs [ins >> 21 & 0x1F] = *p;
   continue;
 }
      if (ins >> 26 == 0x24)



 {
   reg_unit src = (ins >> 16 & 0x1F) == 0 ? 0 : gprs [ins >> 16 & 0x1F];
   uint32_t *p = (uint32_t *)(src + (int16_t) ins);
   if (p == ((void*)0) || invalid_address != ((void*)0))
     return 0;
   invalid_address = p;
   continue;
 }
      if (ins >> 26 == 0x2E)
 {
   reg_unit src = (ins >> 16 & 0x1F) == 0 ? 0 : gprs [ins >> 16 & 0x1F];
   uint32_t *p = (uint32_t *)(src + (int16_t) ins);
   int i;

   for (i = (ins >> 21 & 0x1F); i < 32; i++)
     {
       if (p == invalid_address)
  return 0;
       gprs[i] = *p++;
     }
   continue;
 }
      if ((ins & 0xFC1FFFFF) == 0x7c0803a6)
 {
   lr = gprs [ins >> 21 & 0x1F];
   continue;
 }
      if ((ins & 0xFC1FFFFF) == 0x7c0802a6)
 {
   gprs [ins >> 21 & 0x1F] = lr;
   continue;
 }
      if ((ins & 0xFC1FFFFF) == 0x7c0903a6)
 {
   ctr = gprs [ins >> 21 & 0x1F];
   continue;
 }



      if ((ins & 0xFC000FFF) == 0x7c000120)
 {
   int i;
   uint32_t mask = 0;
   for (i = 0; i < 8; i++)
     mask |= ((-(ins >> (12 + i) & 1)) & 0xF) << 4 * i;
   cr = (cr & ~mask) | (gprs [ins >> 21 & 0x1F] & mask);
   continue;
 }
      if (ins == 0x429f0005)
 {
   lr = (reg_unit) pc;
   continue;
 }
      if (ins == 0x4e800420)
 {
   pc = (uint32_t *) ctr;
   continue;
 }
      if (ins == 0x44000002)
 return 1;

      return 0;
    }
}
