
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int EBUSY ;
 int EPERM ;
 int FMODE_READ ;
 int lcd_clear_display () ;
 scalar_t__ lcd_must_clear ;
 scalar_t__ lcd_open_cnt ;

__attribute__((used)) static int lcd_open(struct inode *inode, struct file *file)
{
 if (lcd_open_cnt)
  return -EBUSY;

 if (file->f_mode & FMODE_READ)
  return -EPERM;

 if (lcd_must_clear) {
  lcd_clear_display();
  lcd_must_clear = 0;
 }
 lcd_open_cnt++;
 return 0;
}
