
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct us_data {int fflags; scalar_t__ subclass; scalar_t__ protocol; int use_last_sector_hacks; scalar_t__ max_lun; TYPE_4__* pusb_dev; } ;
struct scsi_device {scalar_t__ type; int use_10_for_ms; int use_192_bytes_for_3f; int skip_ms_page_3f; int skip_ms_page_8; int fix_capacity; int guess_capacity; scalar_t__ scsi_level; int retry_hwerror; int allow_restart; int last_sector_bug; scalar_t__ lockable; TYPE_5__* sdev_target; int request_queue; int host; } ;
struct TYPE_10__ {scalar_t__ scsi_level; } ;
struct TYPE_8__ {int idVendor; } ;
struct TYPE_9__ {TYPE_3__ descriptor; TYPE_2__* bus; } ;
struct TYPE_7__ {TYPE_1__* controller; } ;
struct TYPE_6__ {int dma_mask; } ;


 int BLK_BOUNCE_HIGH ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ SCSI_2 ;
 scalar_t__ SCSI_SPC_2 ;
 scalar_t__ SCSI_UNKNOWN ;
 scalar_t__ TYPE_DISK ;
 scalar_t__ TYPE_TAPE ;
 int US_FL_CAPACITY_HEURISTICS ;
 int US_FL_CAPACITY_OK ;
 int US_FL_FIX_CAPACITY ;
 int US_FL_MAX_SECTORS_64 ;
 int US_FL_MAX_SECTORS_MIN ;
 int US_FL_NOT_LOCKABLE ;
 int US_FL_NO_WP_DETECT ;
 int US_FL_SANE_SENSE ;
 int US_FL_SCM_MULT_TARG ;
 scalar_t__ US_PR_BULK ;
 scalar_t__ US_PR_CB ;
 scalar_t__ US_PR_CBI ;
 scalar_t__ US_SC_CYP_ATACB ;
 scalar_t__ US_SC_SCSI ;




 int blk_queue_bounce_limit (int ,int ) ;
 int blk_queue_max_hw_sectors (int ,int) ;
 struct us_data* host_to_us (int ) ;
 int le16_to_cpu (int ) ;
 unsigned int queue_max_hw_sectors (int ) ;

__attribute__((used)) static int slave_configure(struct scsi_device *sdev)
{
 struct us_data *us = host_to_us(sdev->host);





 if (us->fflags & (US_FL_MAX_SECTORS_64 | US_FL_MAX_SECTORS_MIN)) {
  unsigned int max_sectors = 64;

  if (us->fflags & US_FL_MAX_SECTORS_MIN)
   max_sectors = PAGE_CACHE_SIZE >> 9;
  if (queue_max_hw_sectors(sdev->request_queue) > max_sectors)
   blk_queue_max_hw_sectors(sdev->request_queue,
           max_sectors);
 } else if (sdev->type == TYPE_TAPE) {




  blk_queue_max_hw_sectors(sdev->request_queue, 0x7FFFFF);
 }






 if (!us->pusb_dev->bus->controller->dma_mask)
  blk_queue_bounce_limit(sdev->request_queue, BLK_BOUNCE_HIGH);




 if (sdev->type == TYPE_DISK) {







  switch (le16_to_cpu(us->pusb_dev->descriptor.idVendor)) {
  case 129:
  case 130:
  case 128:
  case 131:
   if (!(us->fflags & (US_FL_FIX_CAPACITY |
     US_FL_CAPACITY_OK)))
    us->fflags |= US_FL_CAPACITY_HEURISTICS;
   break;
  }




  if (us->subclass != US_SC_SCSI && us->subclass != US_SC_CYP_ATACB)
   sdev->use_10_for_ms = 1;



  sdev->use_192_bytes_for_3f = 1;
  if (us->fflags & US_FL_NO_WP_DETECT)
   sdev->skip_ms_page_3f = 1;



  sdev->skip_ms_page_8 = 1;




  if (us->fflags & US_FL_FIX_CAPACITY)
   sdev->fix_capacity = 1;




  if (us->fflags & US_FL_CAPACITY_HEURISTICS)
   sdev->guess_capacity = 1;


  if (sdev->scsi_level > SCSI_SPC_2)
   us->fflags |= US_FL_SANE_SENSE;







  if (sdev->scsi_level > SCSI_2)
   sdev->sdev_target->scsi_level =
     sdev->scsi_level = SCSI_2;







  sdev->retry_hwerror = 1;



  sdev->allow_restart = 1;




  sdev->last_sector_bug = 1;




  if (!(us->fflags & (US_FL_FIX_CAPACITY | US_FL_CAPACITY_OK |
     US_FL_SCM_MULT_TARG)) &&
    us->protocol == US_PR_BULK)
   us->use_last_sector_hacks = 1;
 } else {




  sdev->use_10_for_ms = 1;
 }







 if ((us->protocol == US_PR_CB || us->protocol == US_PR_CBI) &&
   sdev->scsi_level == SCSI_UNKNOWN)
  us->max_lun = 0;



 if (us->fflags & US_FL_NOT_LOCKABLE)
  sdev->lockable = 0;



 return 0;
}
