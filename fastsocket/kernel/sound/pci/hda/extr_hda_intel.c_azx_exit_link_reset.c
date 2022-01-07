
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx {int dummy; } ;


 int GCTL ;
 int ICH6_GCTL_RESET ;
 int azx_readb (struct azx*,int ) ;
 int azx_writeb (struct azx*,int ,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void azx_exit_link_reset(struct azx *chip)
{
 unsigned long timeout;

 azx_writeb(chip, GCTL, azx_readb(chip, GCTL) | ICH6_GCTL_RESET);

 timeout = jiffies + msecs_to_jiffies(100);
 while (!azx_readb(chip, GCTL) &&
   time_before(jiffies, timeout))
  usleep_range(500, 1000);
}
