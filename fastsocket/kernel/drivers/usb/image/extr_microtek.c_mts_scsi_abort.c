
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct mts_desc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__* hostdata; } ;


 int FAILED ;
 int MTS_DEBUG_GOT_HERE () ;
 int mts_urb_abort (struct mts_desc*) ;

__attribute__((used)) static int mts_scsi_abort(struct scsi_cmnd *srb)
{
 struct mts_desc* desc = (struct mts_desc*)(srb->device->host->hostdata[0]);

 MTS_DEBUG_GOT_HERE();

 mts_urb_abort(desc);

 return FAILED;
}
