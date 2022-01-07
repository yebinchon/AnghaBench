
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int CAP_USBINTR ;
 int CAP_USBSTS ;
 int EINVAL ;
 int REG_BITS ;
 int hw_cwrite (int ,int ,int ) ;

__attribute__((used)) static int hw_intr_clear(int n)
{
 if (n >= REG_BITS)
  return -EINVAL;

 hw_cwrite(CAP_USBINTR, BIT(n), 0);
 hw_cwrite(CAP_USBSTS, BIT(n), BIT(n));
 return 0;
}
