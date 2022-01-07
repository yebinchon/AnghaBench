
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int tcr; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int TXx9_TMTCR_TCE ;
 int __module_get (int ) ;
 int __raw_readl (int *) ;
 int clear_bit (int ,int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ nowayout ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int txx9wdt_alive ;
 TYPE_1__* txx9wdt_reg ;
 int txx9wdt_start () ;

__attribute__((used)) static int txx9wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &txx9wdt_alive))
  return -EBUSY;

 if (__raw_readl(&txx9wdt_reg->tcr) & TXx9_TMTCR_TCE) {
  clear_bit(0, &txx9wdt_alive);
  return -EBUSY;
 }

 if (nowayout)
  __module_get(THIS_MODULE);

 txx9wdt_start();
 return nonseekable_open(inode, file);
}
