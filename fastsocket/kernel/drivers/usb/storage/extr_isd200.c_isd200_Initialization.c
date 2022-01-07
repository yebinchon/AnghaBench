
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 scalar_t__ ISD200_ERROR ;
 scalar_t__ ISD200_GOOD ;
 int US_DEBUGP (char*) ;
 scalar_t__ isd200_get_inquiry_data (struct us_data*) ;
 scalar_t__ isd200_init_info (struct us_data*) ;

__attribute__((used)) static int isd200_Initialization(struct us_data *us)
{
 US_DEBUGP("ISD200 Initialization...\n");



 if (isd200_init_info(us) == ISD200_ERROR) {
  US_DEBUGP("ERROR Initializing ISD200 Info struct\n");
 } else {


  if (isd200_get_inquiry_data(us) != ISD200_GOOD)
   US_DEBUGP("ISD200 Initialization Failure\n");
  else
   US_DEBUGP("ISD200 Initialization complete\n");
 }

 return 0;
}
