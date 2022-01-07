
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {TYPE_2__* f_dentry; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ d_name; } ;


 int FILE_MMAP ;
 int MAY_EXEC ;
 unsigned long PROT_EXEC ;
 int ima_enabled ;
 int process_measurement (struct file*,int ,int ,int ) ;

int ima_file_mmap(struct file *file, unsigned long prot)
{
 int rc;

 if (!ima_enabled || !file)
  return 0;
 if (prot & PROT_EXEC)
  rc = process_measurement(file, file->f_dentry->d_name.name,
      MAY_EXEC, FILE_MMAP);
 return 0;
}
