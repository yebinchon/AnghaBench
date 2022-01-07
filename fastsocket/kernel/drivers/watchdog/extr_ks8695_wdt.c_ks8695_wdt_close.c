
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int ks8695_wdt_stop () ;
 int ks8695wdt_busy ;
 int nowayout ;

__attribute__((used)) static int ks8695_wdt_close(struct inode *inode, struct file *file)
{

 if (!nowayout)
  ks8695_wdt_stop();
 clear_bit(0, &ks8695wdt_busy);
 return 0;
}
