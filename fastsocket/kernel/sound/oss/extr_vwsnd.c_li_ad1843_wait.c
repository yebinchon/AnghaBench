
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;


 int EBUSY ;
 int LI_CC_BUSY ;
 int LI_CODEC_COMMAND ;
 int jiffies ;
 int li_readl (int *,int ) ;
 scalar_t__ time_after_eq (int,unsigned long) ;

__attribute__((used)) static int li_ad1843_wait(lithium_t *lith)
{
 unsigned long later = jiffies + 2;
 while (li_readl(lith, LI_CODEC_COMMAND) & LI_CC_BUSY)
  if (time_after_eq(jiffies, later))
   return -EBUSY;
 return 0;
}
