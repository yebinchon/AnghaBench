
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int EBUSY ;
 int is_active ;
 int mpc5200_wdt_set_timeout (int ,int) ;
 int mpc5200_wdt_start (int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wdt_global ;

__attribute__((used)) static int mpc5200_wdt_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &is_active))
  return -EBUSY;


 mpc5200_wdt_set_timeout(wdt_global, 30);
 mpc5200_wdt_start(wdt_global);
 file->private_data = wdt_global;
 return nonseekable_open(inode, file);
}
