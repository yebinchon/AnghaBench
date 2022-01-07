
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {TYPE_1__* request_queue; } ;
struct TYPE_2__ {int queue_flags; } ;


 int QUEUE_FLAG_BIDI ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int tcm_loop_slave_alloc(struct scsi_device *sd)
{
 set_bit(QUEUE_FLAG_BIDI, &sd->request_queue->queue_flags);
 return 0;
}
