
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (struct work_struct*,int ) ;
 int do_thaw_all ;
 struct work_struct* kmalloc (int,int ) ;
 int schedule_work (struct work_struct*) ;

void emergency_thaw_all(void)
{
 struct work_struct *work;

 work = kmalloc(sizeof(*work), GFP_ATOMIC);
 if (work) {
  INIT_WORK(work, do_thaw_all);
  schedule_work(work);
 }
}
