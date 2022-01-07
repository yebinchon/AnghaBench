
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CAP_USBSTS ;
 int hw_cwrite (int ,int ,int) ;
 int hw_read_intr_enable () ;
 int hw_read_intr_status () ;

__attribute__((used)) static u32 hw_test_and_clear_intr_active(void)
{
 u32 reg = hw_read_intr_status() & hw_read_intr_enable();

 hw_cwrite(CAP_USBSTS, ~0, reg);
 return reg;
}
