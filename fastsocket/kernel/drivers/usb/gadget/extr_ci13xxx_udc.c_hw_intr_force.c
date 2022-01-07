
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ABS_TESTMODE ;
 int BIT (int) ;
 int CAP_USBINTR ;
 int CAP_USBSTS ;
 int EINVAL ;
 int REG_BITS ;
 int TESTMODE_FORCE ;
 int hw_awrite (int ,int ,int ) ;
 int hw_cwrite (int ,int ,int ) ;

__attribute__((used)) static int hw_intr_force(int n)
{
 if (n >= REG_BITS)
  return -EINVAL;

 hw_awrite(ABS_TESTMODE, TESTMODE_FORCE, TESTMODE_FORCE);
 hw_cwrite(CAP_USBINTR, BIT(n), BIT(n));
 hw_cwrite(CAP_USBSTS, BIT(n), BIT(n));
 hw_awrite(ABS_TESTMODE, TESTMODE_FORCE, 0);
 return 0;
}
