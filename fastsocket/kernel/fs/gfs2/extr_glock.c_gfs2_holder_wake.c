
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_holder {int gh_iflags; } ;


 int HIF_WAIT ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void gfs2_holder_wake(struct gfs2_holder *gh)
{
 clear_bit(HIF_WAIT, &gh->gh_iflags);
 smp_mb__after_clear_bit();
 wake_up_bit(&gh->gh_iflags, HIF_WAIT);
}
