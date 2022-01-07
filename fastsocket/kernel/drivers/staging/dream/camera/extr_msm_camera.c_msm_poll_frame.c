
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct msm_device {int sync; } ;
struct file {struct msm_device* private_data; } ;


 unsigned int __msm_poll_frame (int ,struct file*,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int msm_poll_frame(struct file *filep,
 struct poll_table_struct *pll_table)
{
 struct msm_device *pmsm = filep->private_data;
 return __msm_poll_frame(pmsm->sync, filep, pll_table);
}
