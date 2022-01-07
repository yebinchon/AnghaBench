
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int dissociate_dev (struct us_data*) ;
 int scsi_host_put (int ) ;
 int us_to_host (struct us_data*) ;
 int usb_stor_release_resources (struct us_data*) ;

__attribute__((used)) static void release_everything(struct us_data *us)
{
 usb_stor_release_resources(us);
 dissociate_dev(us);



 scsi_host_put(us_to_host(us));
}
