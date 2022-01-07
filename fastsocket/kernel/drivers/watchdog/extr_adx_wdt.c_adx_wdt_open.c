
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct adx_wdt* private_data; } ;
struct adx_wdt {int dummy; } ;


 int EBUSY ;
 int adx_wdt_dev ;
 int adx_wdt_set_timeout (struct adx_wdt*,int) ;
 int adx_wdt_start (struct adx_wdt*) ;
 int driver_open ;
 int nonseekable_open (struct inode*,struct file*) ;
 struct adx_wdt* platform_get_drvdata (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int adx_wdt_open(struct inode *inode, struct file *file)
{
 struct adx_wdt *wdt = platform_get_drvdata(adx_wdt_dev);

 if (test_and_set_bit(0, &driver_open))
  return -EBUSY;

 file->private_data = wdt;
 adx_wdt_set_timeout(wdt, 30);
 adx_wdt_start(wdt);

 return nonseekable_open(inode, file);
}
