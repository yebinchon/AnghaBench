
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int writel (int ,int ) ;

__attribute__((used)) static void vfe_prog_hw(uint8_t *hwreg,
 uint32_t *inptr, uint32_t regcnt)
{

 uint32_t i;
 uint32_t *p;




 p = (uint32_t *)(hwreg);
 for (i = 0; i < (regcnt >> 2); i++)
  writel(*inptr++, p++);



}
