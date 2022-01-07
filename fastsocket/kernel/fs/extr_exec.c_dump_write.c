
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_pos; TYPE_1__* f_op; } ;
struct TYPE_2__ {int (* write ) (struct file*,void const*,int,int *) ;} ;


 int dump_interrupted () ;
 int stub1 (struct file*,void const*,int,int *) ;

int dump_write(struct file *file, const void *addr, int nr)
{
 return !dump_interrupted() &&
  file->f_op->write(file, addr, nr, &file->f_pos) == nr;
}
