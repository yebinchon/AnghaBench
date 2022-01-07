
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb_devc ;


 int sb_getmixer (int *,unsigned int) ;
 int sb_setmixer (int *,unsigned int,int) ;

void sb_chgmixer
 (sb_devc * devc, unsigned int reg, unsigned int mask, unsigned int val)
{
 int value;

 value = sb_getmixer(devc, reg);
 value = (value & ~mask) | (val & mask);
 sb_setmixer(devc, reg, value);
}
