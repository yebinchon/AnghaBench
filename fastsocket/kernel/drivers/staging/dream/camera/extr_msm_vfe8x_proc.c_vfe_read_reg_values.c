
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;



__attribute__((used)) static void vfe_read_reg_values(uint8_t *hwreg,
 uint32_t *dest, uint32_t count)
{

 uint32_t *temp;
 uint32_t i;




 temp = (uint32_t *)(hwreg);
 for (i = 0; i < count; i++)
  *dest++ = *temp++;


}
