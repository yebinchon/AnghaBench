
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_clock {int rwsem; int zombie; } ;
struct file {struct posix_clock* private_data; } ;


 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static struct posix_clock *get_posix_clock(struct file *fp)
{
 struct posix_clock *clk = fp->private_data;

 down_read(&clk->rwsem);

 if (!clk->zombie)
  return clk;

 up_read(&clk->rwsem);

 return ((void*)0);
}
