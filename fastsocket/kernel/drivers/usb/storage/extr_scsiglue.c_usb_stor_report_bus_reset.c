
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int scsi_lock (struct Scsi_Host*) ;
 int scsi_report_bus_reset (struct Scsi_Host*,int ) ;
 int scsi_unlock (struct Scsi_Host*) ;
 struct Scsi_Host* us_to_host (struct us_data*) ;

void usb_stor_report_bus_reset(struct us_data *us)
{
 struct Scsi_Host *host = us_to_host(us);

 scsi_lock(host);
 scsi_report_bus_reset(host, 0);
 scsi_unlock(host);
}
