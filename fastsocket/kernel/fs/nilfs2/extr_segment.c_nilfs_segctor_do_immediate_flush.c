
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sc_info {int sc_flush_request; int sc_flags; int sc_state_lock; } ;


 int FLUSH_DAT_BIT ;
 int FLUSH_FILE_BIT ;
 int NILFS_SC_PRIOR_FLUSH ;
 int SC_FLUSH_DAT ;
 int SC_FLUSH_FILE ;
 int clear_bit (int ,int *) ;
 int nilfs_segctor_do_construct (struct nilfs_sc_info*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nilfs_segctor_do_immediate_flush(struct nilfs_sc_info *sci)
{
 int mode = 0;
 int err;

 spin_lock(&sci->sc_state_lock);
 mode = (sci->sc_flush_request & FLUSH_DAT_BIT) ?
  SC_FLUSH_DAT : SC_FLUSH_FILE;
 spin_unlock(&sci->sc_state_lock);

 if (mode) {
  err = nilfs_segctor_do_construct(sci, mode);

  spin_lock(&sci->sc_state_lock);
  sci->sc_flush_request &= (mode == SC_FLUSH_FILE) ?
   ~FLUSH_FILE_BIT : ~FLUSH_DAT_BIT;
  spin_unlock(&sci->sc_state_lock);
 }
 clear_bit(NILFS_SC_PRIOR_FLUSH, &sci->sc_flags);
}
