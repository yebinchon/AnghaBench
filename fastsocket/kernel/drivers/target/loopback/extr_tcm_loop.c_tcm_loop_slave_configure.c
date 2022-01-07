
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;



__attribute__((used)) static int tcm_loop_slave_configure(struct scsi_device *sd)
{
 return 0;
}
