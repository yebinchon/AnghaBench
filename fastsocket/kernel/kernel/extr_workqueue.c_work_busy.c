
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 unsigned int WORK_BUSY_PENDING ;
 unsigned int WORK_BUSY_RUNNING ;
 scalar_t__ find_worker_executing_work (int ,struct work_struct*) ;
 int gcwq ;
 scalar_t__ work_pending (struct work_struct*) ;

unsigned int work_busy(struct work_struct *work)
{
 unsigned int ret = 0;

 if (work_pending(work))
  ret |= WORK_BUSY_PENDING;




 return ret;
}
