
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {scalar_t__ subclass; } ;
struct scsi_device {int inquiry_len; TYPE_1__* sdev_target; int request_queue; int host; } ;
struct TYPE_2__ {int pdt_1f_for_no_lun; } ;


 scalar_t__ US_SC_UFI ;
 int blk_queue_update_dma_alignment (int ,int) ;
 struct us_data* host_to_us (int ) ;

__attribute__((used)) static int slave_alloc (struct scsi_device *sdev)
{
 struct us_data *us = host_to_us(sdev->host);






 sdev->inquiry_len = 36;
 blk_queue_update_dma_alignment(sdev->request_queue, (512 - 1));
 if (us->subclass == US_SC_UFI)
  sdev->sdev_target->pdt_1f_for_no_lun = 1;

 return 0;
}
