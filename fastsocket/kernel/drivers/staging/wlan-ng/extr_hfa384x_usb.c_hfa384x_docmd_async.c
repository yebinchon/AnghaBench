
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hfa384x_t ;
typedef int hfa384x_metacmd_t ;
typedef int ctlx_usercb_t ;
typedef int ctlx_cmdcb_t ;


 int DOASYNC ;
 int hfa384x_docmd (int *,int ,int *,int ,int ,void*) ;

__attribute__((used)) static inline int
hfa384x_docmd_async(hfa384x_t *hw,
      hfa384x_metacmd_t *cmd,
      ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
{
 return hfa384x_docmd(hw, DOASYNC, cmd, cmdcb, usercb, usercb_data);
}
