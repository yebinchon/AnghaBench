
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int tty_write (struct file*,char*,int) ;

__attribute__((used)) static void poll_channel(struct file *f, int channel)
{
 char cmd;

 cmd = 0x60 | (channel & 0x1f);
 tty_write(f, &cmd, 1);
}
