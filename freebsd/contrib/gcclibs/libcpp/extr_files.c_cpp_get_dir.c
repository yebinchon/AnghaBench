
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cpp_file {int * dir; } ;
typedef int cpp_dir ;



cpp_dir *
cpp_get_dir (struct _cpp_file *f)
{
  return f->dir;
}
