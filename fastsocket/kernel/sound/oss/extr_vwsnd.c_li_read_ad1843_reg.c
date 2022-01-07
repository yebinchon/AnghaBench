
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lock; } ;
typedef TYPE_1__ lithium_t ;


 int ASSERT (int) ;
 int DBGXV (char*,TYPE_1__*,int,int) ;
 int LI_CC_DIR_RD ;
 int LI_CODEC_COMMAND ;
 int LI_CODEC_DATA ;
 int in_interrupt () ;
 int li_ad1843_wait (TYPE_1__*) ;
 int li_readl (TYPE_1__*,int ) ;
 int li_writel (TYPE_1__*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int li_read_ad1843_reg(lithium_t *lith, int reg)
{
 int val;

 ASSERT(!in_interrupt());
 spin_lock(&lith->lock);
 {
  val = li_ad1843_wait(lith);
  if (val == 0) {
   li_writel(lith, LI_CODEC_COMMAND, LI_CC_DIR_RD | reg);
   val = li_ad1843_wait(lith);
  }
  if (val == 0)
   val = li_readl(lith, LI_CODEC_DATA);
 }
 spin_unlock(&lith->lock);

 DBGXV("li_read_ad1843_reg(lith=0x%p, reg=%d) returns 0x%04x\n",
       lith, reg, val);

 return val;
}
