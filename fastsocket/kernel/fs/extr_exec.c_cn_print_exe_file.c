
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_path; } ;
struct core_name {int dummy; } ;
struct TYPE_2__ {int mm; } ;


 int ENOMEM ;
 int GFP_TEMPORARY ;
 scalar_t__ IS_ERR (char*) ;
 int PATH_MAX ;
 int PTR_ERR (char*) ;
 int cn_printf (struct core_name*,char*,...) ;
 TYPE_1__* current ;
 char* d_path (int *,char*,int ) ;
 int fput (struct file*) ;
 struct file* get_mm_exe_file (int ) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;

__attribute__((used)) static int cn_print_exe_file(struct core_name *cn)
{
 struct file *exe_file;
 char *pathbuf, *path, *p;
 int ret;

 exe_file = get_mm_exe_file(current->mm);
 if (!exe_file)
  return cn_printf(cn, "(unknown)");

 pathbuf = kmalloc(PATH_MAX, GFP_TEMPORARY);
 if (!pathbuf) {
  ret = -ENOMEM;
  goto put_exe_file;
 }

 path = d_path(&exe_file->f_path, pathbuf, PATH_MAX);
 if (IS_ERR(path)) {
  ret = PTR_ERR(path);
  goto free_buf;
 }

 for (p = path; *p; p++)
  if (*p == '/')
   *p = '!';

 ret = cn_printf(cn, "%s", path);

free_buf:
 kfree(pathbuf);
put_exe_file:
 fput(exe_file);
 return ret;
}
