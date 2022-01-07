
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_segctor_req {scalar_t__ mode; int sb_err; scalar_t__ sc_err; int seq_accepted; } ;
struct nilfs_sc_info {int sc_state; int sc_state_lock; TYPE_1__* sc_timer; int sc_flush_request; int sc_seq_done; } ;
struct TYPE_2__ {int expires; } ;


 int FLUSH_DAT_BIT ;
 int FLUSH_FILE_BIT ;
 int NILFS_SEGCTOR_COMMIT ;
 scalar_t__ SC_FLUSH_DAT ;
 scalar_t__ SC_FLUSH_FILE ;
 scalar_t__ SC_LSEG_SR ;
 int add_timer (TYPE_1__*) ;
 int jiffies ;
 int nilfs_segctor_wakeup (struct nilfs_sc_info*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (int ,int ) ;

__attribute__((used)) static void nilfs_segctor_notify(struct nilfs_sc_info *sci,
     struct nilfs_segctor_req *req)
{

 spin_lock(&sci->sc_state_lock);

 if (req->mode == SC_LSEG_SR) {
  sci->sc_state &= ~NILFS_SEGCTOR_COMMIT;
  sci->sc_seq_done = req->seq_accepted;
  nilfs_segctor_wakeup(sci, req->sc_err ? : req->sb_err);
  sci->sc_flush_request = 0;
 } else {
  if (req->mode == SC_FLUSH_FILE)
   sci->sc_flush_request &= ~FLUSH_FILE_BIT;
  else if (req->mode == SC_FLUSH_DAT)
   sci->sc_flush_request &= ~FLUSH_DAT_BIT;


  if (sci->sc_timer && (sci->sc_state & NILFS_SEGCTOR_COMMIT) &&
      time_before(jiffies, sci->sc_timer->expires))
   add_timer(sci->sc_timer);
 }
 spin_unlock(&sci->sc_state_lock);
}
