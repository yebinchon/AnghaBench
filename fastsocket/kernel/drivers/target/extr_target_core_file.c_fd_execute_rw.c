
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ emulate_fua_write; int block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
struct se_cmd {int data_direction; int se_cmd_flags; int t_task_lba; int data_length; struct se_device* se_dev; int t_data_nents; struct scatterlist* t_data_sg; } ;
struct scatterlist {int dummy; } ;
struct fd_dev {TYPE_3__* fd_file; } ;
typedef int sense_reason_t ;
typedef int loff_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_5__ {int dentry; } ;
struct TYPE_6__ {TYPE_2__ f_path; } ;


 int DMA_FROM_DEVICE ;
 struct fd_dev* FD_DEV (struct se_device*) ;
 int SAM_STAT_GOOD ;
 int SCF_FUA ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int fd_do_rw (struct se_cmd*,struct scatterlist*,int ,int) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 int vfs_fsync_range (TYPE_3__*,int ,int,int,int) ;

__attribute__((used)) static sense_reason_t
fd_execute_rw(struct se_cmd *cmd)
{
 struct scatterlist *sgl = cmd->t_data_sg;
 u32 sgl_nents = cmd->t_data_nents;
 enum dma_data_direction data_direction = cmd->data_direction;
 struct se_device *dev = cmd->se_dev;
 int ret = 0;





 if (data_direction == DMA_FROM_DEVICE) {
  ret = fd_do_rw(cmd, sgl, sgl_nents, 0);
 } else {
  ret = fd_do_rw(cmd, sgl, sgl_nents, 1);





  if (ret > 0 &&
      dev->dev_attrib.emulate_fua_write > 0 &&
      (cmd->se_cmd_flags & SCF_FUA)) {
   struct fd_dev *fd_dev = FD_DEV(dev);
   loff_t start = cmd->t_task_lba *
    dev->dev_attrib.block_size;
   loff_t end = start + cmd->data_length;

   vfs_fsync_range(fd_dev->fd_file,
     fd_dev->fd_file->f_path.dentry,
     start, end, 1);
  }
 }

 if (ret < 0)
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

 if (ret)
  target_complete_cmd(cmd, SAM_STAT_GOOD);
 return 0;
}
