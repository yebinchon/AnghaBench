
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pas_intr_mask ;
 int pas_write (int,int) ;

int pas_set_intr(int mask)
{
 if (!mask)
  return 0;

 pas_intr_mask |= mask;

 pas_write(pas_intr_mask, 0x0B8B);
 return 0;
}
