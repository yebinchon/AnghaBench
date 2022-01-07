
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_rgrpd {int dummy; } ;
struct gfs2_rbm {struct gfs2_rgrpd* rgd; } ;


 int WARN_ON_ONCE (int) ;
 int gfs2_rbm_from_block (struct gfs2_rbm*,int ) ;
 unsigned char gfs2_testbit (struct gfs2_rbm*) ;

__attribute__((used)) static unsigned char gfs2_get_block_type(struct gfs2_rgrpd *rgd, u64 block)
{
 struct gfs2_rbm rbm = { .rgd = rgd, };
 int ret;

 ret = gfs2_rbm_from_block(&rbm, block);
 WARN_ON_ONCE(ret != 0);

 return gfs2_testbit(&rbm);
}
