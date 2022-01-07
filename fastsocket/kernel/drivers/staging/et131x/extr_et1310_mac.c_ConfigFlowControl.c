
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et131x_adapter {scalar_t__ duplex_mode; scalar_t__ FlowControl; scalar_t__ RegistryFlowControl; } ;


 scalar_t__ Both ;
 int ET1310_PhyAccessMiBit (struct et131x_adapter*,int ,int,int,char*) ;
 void* None ;
 scalar_t__ RxOnly ;
 char TRUEPHY_BIT_CLEAR ;
 int TRUEPHY_BIT_READ ;
 char TRUEPHY_BIT_SET ;

void ConfigFlowControl(struct et131x_adapter *etdev)
{
 if (etdev->duplex_mode == 0) {
  etdev->FlowControl = None;
 } else {
  char RemotePause, RemoteAsyncPause;

  ET1310_PhyAccessMiBit(etdev,
          TRUEPHY_BIT_READ, 5, 10, &RemotePause);
  ET1310_PhyAccessMiBit(etdev,
          TRUEPHY_BIT_READ, 5, 11,
          &RemoteAsyncPause);

  if ((RemotePause == TRUEPHY_BIT_SET) &&
      (RemoteAsyncPause == TRUEPHY_BIT_SET)) {
   etdev->FlowControl = etdev->RegistryFlowControl;
  } else if ((RemotePause == TRUEPHY_BIT_SET) &&
      (RemoteAsyncPause == TRUEPHY_BIT_CLEAR)) {
   if (etdev->RegistryFlowControl == Both)
    etdev->FlowControl = Both;
   else
    etdev->FlowControl = None;
  } else if ((RemotePause == TRUEPHY_BIT_CLEAR) &&
      (RemoteAsyncPause == TRUEPHY_BIT_CLEAR)) {
   etdev->FlowControl = None;
  } else {

   if (etdev->RegistryFlowControl == Both)
    etdev->FlowControl = RxOnly;
   else
    etdev->FlowControl = None;
  }
 }
}
