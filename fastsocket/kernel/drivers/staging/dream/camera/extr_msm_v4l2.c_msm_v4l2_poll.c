
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* drv; } ;
struct TYPE_3__ {unsigned int (* drv_poll ) (int ,struct file*,struct poll_table_struct*) ;int sync; } ;


 TYPE_2__* g_pmsm_v4l2_dev ;
 unsigned int stub1 (int ,struct file*,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int msm_v4l2_poll(struct file *f, struct poll_table_struct *w)
{
 return g_pmsm_v4l2_dev->drv->drv_poll(g_pmsm_v4l2_dev->drv->sync, f, w);
}
