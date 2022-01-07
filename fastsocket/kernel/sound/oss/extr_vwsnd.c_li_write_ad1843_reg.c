
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ lithium_t ;


 int LI_CC_DIR_WR ;
 int LI_CODEC_COMMAND ;
 int LI_CODEC_DATA ;
 scalar_t__ li_ad1843_wait (TYPE_1__*) ;
 int li_writel (TYPE_1__*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void li_write_ad1843_reg(lithium_t *lith, int reg, int newval)
{
 spin_lock(&lith->lock);
 {
  if (li_ad1843_wait(lith) == 0) {
   li_writel(lith, LI_CODEC_DATA, newval);
   li_writel(lith, LI_CODEC_COMMAND, LI_CC_DIR_WR | reg);
  }
 }
 spin_unlock(&lith->lock);
}
