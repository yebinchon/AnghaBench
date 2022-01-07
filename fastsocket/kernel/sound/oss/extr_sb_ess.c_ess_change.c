
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb_devc ;


 int ess_read (int *,unsigned int) ;
 int ess_write (int *,unsigned int,int) ;

__attribute__((used)) static void ess_change
 (sb_devc *devc, unsigned int reg, unsigned int mask, unsigned int val)
{
 int value;

 value = ess_read (devc, reg);
 value = (value & ~mask) | (val & mask);
 ess_write (devc, reg, value);
}
