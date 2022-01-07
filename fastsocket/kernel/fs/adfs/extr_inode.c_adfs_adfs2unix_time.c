
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {unsigned int tv_sec; unsigned int tv_nsec; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ stamped; int loadaddr; unsigned int execaddr; } ;


 TYPE_1__* ADFS_I (struct inode*) ;
 struct timespec CURRENT_TIME_SEC ;

__attribute__((used)) static void
adfs_adfs2unix_time(struct timespec *tv, struct inode *inode)
{
 unsigned int high, low;

 if (ADFS_I(inode)->stamped == 0)
  goto cur_time;

 high = ADFS_I(inode)->loadaddr << 24;
 low = ADFS_I(inode)->execaddr;

 high |= low >> 8;
 low &= 255;


 if (high < 0x336e996a)
  goto too_early;


 if (high >= 0x656e9969)
  goto too_late;


 high -= 0x336e996a;


 tv->tv_sec = (((high % 100) << 8) + low) / 100 + (high / 100 << 8);
 tv->tv_nsec = 0;
 return;

 cur_time:
 *tv = CURRENT_TIME_SEC;
 return;

 too_early:
 tv->tv_sec = tv->tv_nsec = 0;
 return;

 too_late:
 tv->tv_sec = 0x7ffffffd;
 tv->tv_nsec = 0;
 return;
}
