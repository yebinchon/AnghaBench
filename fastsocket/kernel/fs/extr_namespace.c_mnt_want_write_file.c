
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mnt; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int mnt_sb; } ;


 int __mnt_want_write_file (struct file*) ;
 int sb_end_write (int ) ;
 int sb_start_write (int ) ;

int mnt_want_write_file(struct file *file)
{
 int ret;

 sb_start_write(file->f_path.mnt->mnt_sb);
 ret = __mnt_want_write_file(file);
 if (ret)
  sb_end_write(file->f_path.mnt->mnt_sb);
 return ret;
}
