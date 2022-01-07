
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int hfa384x_t ;
typedef int ctlx_usercb_t ;


 int hfa384x_cb_rrid ;
 int hfa384x_dorrid_async (int *,int ,int *,int ,int ,int ,void*) ;

int
hfa384x_drvr_getconfig_async(hfa384x_t *hw,
        u16 rid, ctlx_usercb_t usercb, void *usercb_data)
{
 return hfa384x_dorrid_async(hw, rid, ((void*)0), 0,
        hfa384x_cb_rrid, usercb, usercb_data);
}
