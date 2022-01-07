
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;
struct bdi_writeback {int list; } ;
struct backing_dev_info {int wb_lock; int wb_list; } ;


 int PF_FLUSHER ;
 int PF_SWAPWRITE ;
 struct task_struct* current ;
 int list_add_tail_rcu (int *,int *) ;
 int set_freezable () ;
 int set_user_nice (struct task_struct*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void bdi_task_init(struct backing_dev_info *bdi,
     struct bdi_writeback *wb)
{
 struct task_struct *tsk = current;

 spin_lock(&bdi->wb_lock);
 list_add_tail_rcu(&wb->list, &bdi->wb_list);
 spin_unlock(&bdi->wb_lock);

 tsk->flags |= PF_FLUSHER | PF_SWAPWRITE;
 set_freezable();




 set_user_nice(tsk, 0);
}
