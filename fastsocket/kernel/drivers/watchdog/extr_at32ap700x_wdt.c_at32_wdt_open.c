
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int users; } ;


 int EBUSY ;
 int at32_wdt_start () ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int,int *) ;
 TYPE_1__* wdt ;

__attribute__((used)) static int at32_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(1, &wdt->users))
  return -EBUSY;

 at32_wdt_start();
 return nonseekable_open(inode, file);
}
