
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CAP_USBINTR ;
 int hw_cread (int ,int ) ;

__attribute__((used)) static u32 hw_read_intr_enable(void)
{
 return hw_cread(CAP_USBINTR, ~0);
}
