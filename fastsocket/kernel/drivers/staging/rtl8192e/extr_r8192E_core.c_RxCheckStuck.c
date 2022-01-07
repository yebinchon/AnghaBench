
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int RESET_TYPE ;


 int COMP_RESET ;
 scalar_t__ HalRxCheckStuck8190Pci (struct net_device*) ;
 int RESET_TYPE_NORESET ;
 int RESET_TYPE_SILENT ;
 int RT_TRACE (int ,char*) ;

__attribute__((used)) static RESET_TYPE RxCheckStuck(struct net_device *dev)
{

 if(HalRxCheckStuck8190Pci(dev))
 {
  RT_TRACE(COMP_RESET, "RxStuck Condition\n");
  return RESET_TYPE_SILENT;
 }

 return RESET_TYPE_NORESET;
}
