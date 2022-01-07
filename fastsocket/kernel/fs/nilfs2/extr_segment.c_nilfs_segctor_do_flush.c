
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sc_info {int sc_flush_request; int sc_state_lock; int sc_wait_daemon; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void nilfs_segctor_do_flush(struct nilfs_sc_info *sci, int bn)
{
 spin_lock(&sci->sc_state_lock);
 if (!(sci->sc_flush_request & (1 << bn))) {
  unsigned long prev_req = sci->sc_flush_request;

  sci->sc_flush_request |= (1 << bn);
  if (!prev_req)
   wake_up(&sci->sc_wait_daemon);
 }
 spin_unlock(&sci->sc_state_lock);
}
