
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int lcd_open_cnt ;

__attribute__((used)) static int lcd_release(struct inode *inode, struct file *file)
{
 lcd_open_cnt--;
 return 0;
}
