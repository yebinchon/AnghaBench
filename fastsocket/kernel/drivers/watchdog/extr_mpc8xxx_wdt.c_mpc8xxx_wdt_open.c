
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int swcrr; } ;


 int EBUSY ;
 int SWCRR_SWEN ;
 int SWCRR_SWPR ;
 int SWCRR_SWRI ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int del_timer_sync (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ nowayout ;
 int out_be32 (int *,int) ;
 scalar_t__ prescale ;
 scalar_t__ reset ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int timeout ;
 TYPE_1__* wd_base ;
 int wdt_is_open ;
 int wdt_timer ;

__attribute__((used)) static int mpc8xxx_wdt_open(struct inode *inode, struct file *file)
{
 u32 tmp = SWCRR_SWEN;
 if (test_and_set_bit(0, &wdt_is_open))
  return -EBUSY;


 if (nowayout)
  __module_get(THIS_MODULE);


 if (prescale)
  tmp |= SWCRR_SWPR;
 if (reset)
  tmp |= SWCRR_SWRI;

 tmp |= timeout << 16;

 out_be32(&wd_base->swcrr, tmp);

 del_timer_sync(&wdt_timer);

 return nonseekable_open(inode, file);
}
