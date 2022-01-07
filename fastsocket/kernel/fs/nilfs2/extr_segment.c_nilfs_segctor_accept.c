
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segctor_req {int seq_accepted; scalar_t__ sb_err; scalar_t__ sc_err; } ;
struct nilfs_sc_info {scalar_t__ sc_timer; int sc_state_lock; int sc_seq_request; } ;


 int del_timer_sync (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nilfs_segctor_accept(struct nilfs_sc_info *sci,
     struct nilfs_segctor_req *req)
{
 req->sc_err = req->sb_err = 0;
 spin_lock(&sci->sc_state_lock);
 req->seq_accepted = sci->sc_seq_request;
 spin_unlock(&sci->sc_state_lock);

 if (sci->sc_timer)
  del_timer_sync(sci->sc_timer);
}
