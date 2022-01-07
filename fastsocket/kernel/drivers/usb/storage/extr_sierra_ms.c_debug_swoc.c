
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swoc_info {int LinuxVer; int LinuxSKU; int rev; } ;


 int US_DEBUGP (char*,int ) ;

__attribute__((used)) static void debug_swoc(struct swoc_info *swocInfo)
{
 US_DEBUGP("SWIMS: SWoC Rev: %02d \n", swocInfo->rev);
 US_DEBUGP("SWIMS: Linux SKU: %04X \n", swocInfo->LinuxSKU);
 US_DEBUGP("SWIMS: Linux Version: %04X \n", swocInfo->LinuxVer);
}
