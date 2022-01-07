
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_flags; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
typedef size_t ssize_t ;


 int DFL_BLOCK_LOCKS ;
 size_t EINVAL ;
 int clear_bit (int ,int *) ;
 int gfs2_glock_thaw (struct gfs2_sbd*) ;
 int set_bit (int ,int *) ;
 int simple_strtol (char const*,int *,int ) ;
 int smp_mb__after_clear_bit () ;

__attribute__((used)) static ssize_t block_store(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 ssize_t ret = len;
 int val;

 val = simple_strtol(buf, ((void*)0), 0);

 if (val == 1)
  set_bit(DFL_BLOCK_LOCKS, &ls->ls_flags);
 else if (val == 0) {
  clear_bit(DFL_BLOCK_LOCKS, &ls->ls_flags);
  smp_mb__after_clear_bit();
  gfs2_glock_thaw(sdp);
 } else {
  ret = -EINVAL;
 }
 return ret;
}
