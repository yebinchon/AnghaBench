
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int EBUSY ;
 int EPERM ;
 int FMODE_WRITE ;
 scalar_t__ keypad_buflen ;
 scalar_t__ keypad_open_cnt ;

__attribute__((used)) static int keypad_open(struct inode *inode, struct file *file)
{

 if (keypad_open_cnt)
  return -EBUSY;

 if (file->f_mode & FMODE_WRITE)
  return -EPERM;

 keypad_buflen = 0;
 keypad_open_cnt++;
 return 0;
}
