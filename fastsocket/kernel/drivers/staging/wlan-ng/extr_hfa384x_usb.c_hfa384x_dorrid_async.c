
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int hfa384x_t ;
typedef int ctlx_usercb_t ;
typedef int ctlx_cmdcb_t ;


 int DOASYNC ;
 int hfa384x_dorrid (int *,int ,int ,void*,unsigned int,int ,int ,void*) ;

__attribute__((used)) static inline int
hfa384x_dorrid_async(hfa384x_t *hw,
       u16 rid, void *riddata, unsigned int riddatalen,
       ctlx_cmdcb_t cmdcb,
       ctlx_usercb_t usercb, void *usercb_data)
{
 return hfa384x_dorrid(hw, DOASYNC,
         rid, riddata, riddatalen,
         cmdcb, usercb, usercb_data);
}
