
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sem; int ns_ndirtyblks; } ;
struct nilfs_segctor_req {scalar_t__ mode; int sc_err; int sb_err; } ;
struct nilfs_sc_info {int sc_flags; struct nilfs_sb_info* sc_sbi; } ;
struct nilfs_sb_info {struct the_nilfs* s_nilfs; } ;


 int NILFS_SC_SUPER_ROOT ;
 scalar_t__ SC_FLUSH_DAT ;
 scalar_t__ SC_LSEG_SR ;
 int atomic_set (int *,int ) ;
 int down_write (int *) ;
 scalar_t__ likely (int) ;
 int nilfs_altsb_need_update (struct the_nilfs*) ;
 int nilfs_commit_super (struct nilfs_sb_info*,int ) ;
 scalar_t__ nilfs_discontinued (struct the_nilfs*) ;
 int nilfs_segctor_confirm (struct nilfs_sc_info*) ;
 int nilfs_segctor_do_construct (struct nilfs_sc_info*,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_write (int *) ;

__attribute__((used)) static int nilfs_segctor_construct(struct nilfs_sc_info *sci,
       struct nilfs_segctor_req *req)
{
 struct nilfs_sb_info *sbi = sci->sc_sbi;
 struct the_nilfs *nilfs = sbi->s_nilfs;
 int err = 0;

 if (nilfs_discontinued(nilfs))
  req->mode = SC_LSEG_SR;
 if (!nilfs_segctor_confirm(sci)) {
  err = nilfs_segctor_do_construct(sci, req->mode);
  req->sc_err = err;
 }
 if (likely(!err)) {
  if (req->mode != SC_FLUSH_DAT)
   atomic_set(&nilfs->ns_ndirtyblks, 0);
  if (test_bit(NILFS_SC_SUPER_ROOT, &sci->sc_flags) &&
      nilfs_discontinued(nilfs)) {
   down_write(&nilfs->ns_sem);
   req->sb_err = nilfs_commit_super(sbi,
     nilfs_altsb_need_update(nilfs));
   up_write(&nilfs->ns_sem);
  }
 }
 return err;
}
