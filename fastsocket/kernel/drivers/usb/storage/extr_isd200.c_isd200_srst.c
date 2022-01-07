
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int ACTION_REENABLE ;
 int ACTION_RESET ;
 int ISD200_ERROR ;
 int ISD200_GOOD ;
 int ISD200_TRANSPORT_GOOD ;
 int US_DEBUGP (char*,...) ;
 int isd200_action (struct us_data*,int ,int *,int ) ;
 int msleep (int) ;

__attribute__((used)) static int isd200_srst( struct us_data *us )
{
 int retStatus = ISD200_GOOD;
 int transferStatus;

 US_DEBUGP("Entering isd200_SRST\n");

 transferStatus = isd200_action( us, ACTION_RESET, ((void*)0), 0 );


 if (transferStatus != ISD200_TRANSPORT_GOOD) {
  US_DEBUGP("   Error issuing SRST\n");
  retStatus = ISD200_ERROR;
 } else {

  msleep(10);

  transferStatus = isd200_action( us, ACTION_REENABLE, ((void*)0), 0 );
  if (transferStatus != ISD200_TRANSPORT_GOOD) {
   US_DEBUGP("   Error taking drive out of reset\n");
   retStatus = ISD200_ERROR;
  } else {

   msleep(50);
  }
 }

 US_DEBUGP("Leaving isd200_srst %08X\n", retStatus);
 return retStatus;
}
