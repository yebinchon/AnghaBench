
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {TYPE_2__* f_dentry; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ d_name; } ;


 int FILE_CHECK ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int ima_enabled ;
 int process_measurement (struct file*,int ,int,int ) ;

int ima_file_check(struct file *file, int mask)
{
 int rc;

 if (!ima_enabled)
  return 0;

 rc = process_measurement(file, file->f_dentry->d_name.name,
     mask & (MAY_READ | MAY_WRITE | MAY_EXEC),
     FILE_CHECK);
 return 0;
}
