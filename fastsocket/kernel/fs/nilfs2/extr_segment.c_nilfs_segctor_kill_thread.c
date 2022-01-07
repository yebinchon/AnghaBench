
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sc_info {int sc_state_lock; int * sc_task; int sc_wait_task; int sc_wait_daemon; int sc_state; } ;


 int NILFS_SEGCTOR_QUIT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void nilfs_segctor_kill_thread(struct nilfs_sc_info *sci)
{
 sci->sc_state |= NILFS_SEGCTOR_QUIT;

 while (sci->sc_task) {
  wake_up(&sci->sc_wait_daemon);
  spin_unlock(&sci->sc_state_lock);
  wait_event(sci->sc_wait_task, sci->sc_task == ((void*)0));
  spin_lock(&sci->sc_state_lock);
 }
}
