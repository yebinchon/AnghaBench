
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_depth; } ;


 int EOPNOTSUPP ;



 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;
 int scsi_get_tag_type (struct scsi_device*) ;
 int scsi_track_queue_full (struct scsi_device*,int) ;

__attribute__((used)) static int tcm_loop_change_queue_depth(
 struct scsi_device *sdev,
 int depth,
 int reason)
{
 switch (reason) {
 case 130:
  scsi_adjust_queue_depth(sdev, scsi_get_tag_type(sdev), depth);
  break;
 case 129:
  scsi_track_queue_full(sdev, depth);
  break;
 case 128:
  scsi_adjust_queue_depth(sdev, scsi_get_tag_type(sdev), depth);
  break;
 default:
  return -EOPNOTSUPP;
 }
 return sdev->queue_depth;
}
