
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int hfa384x_t ;


 int hfa384x_dowrid_wait (int *,int ,void*,int ) ;

int hfa384x_drvr_setconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len)
{
 return hfa384x_dowrid_wait(hw, rid, buf, len);
}
