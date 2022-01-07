
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt; } ;
struct file {TYPE_1__ f_path; } ;


 int mnt_drop_write (int ) ;

void mnt_drop_write_file(struct file *file)
{
 mnt_drop_write(file->f_path.mnt);
}
