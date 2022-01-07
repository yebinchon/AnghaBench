
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int dsp_halt (struct file*) ;

__attribute__((used)) static int dsp_release(struct file *file)
{
 dsp_halt(file);
 return 0;
}
