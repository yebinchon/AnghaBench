
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct adx_wdt* private_data; } ;
struct adx_wdt {int dummy; } ;


 int adx_wdt_stop (struct adx_wdt*) ;
 int clear_bit (int ,int *) ;
 int driver_open ;

__attribute__((used)) static int adx_wdt_release(struct inode *inode, struct file *file)
{
 struct adx_wdt *wdt = file->private_data;

 adx_wdt_stop(wdt);
 clear_bit(0, &driver_open);

 return 0;
}
