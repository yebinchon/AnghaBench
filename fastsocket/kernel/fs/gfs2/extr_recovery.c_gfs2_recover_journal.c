
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_jdesc {int jd_flags; int jd_work; } ;


 int JDF_RECOVERY ;
 int TASK_UNINTERRUPTIBLE ;
 int gfs2_recovery_wait ;
 int slow_work_enqueue (int *) ;
 int wait_on_bit (int *,int ,int ,int ) ;

int gfs2_recover_journal(struct gfs2_jdesc *jd)
{
 int rv;
 rv = slow_work_enqueue(&jd->jd_work);
 if (rv)
  return rv;
 wait_on_bit(&jd->jd_flags, JDF_RECOVERY, gfs2_recovery_wait, TASK_UNINTERRUPTIBLE);
 return 0;
}
