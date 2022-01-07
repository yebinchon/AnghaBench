
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cpp_file {char const* path; } ;



const char *
cpp_get_path (struct _cpp_file *f)
{
  return f->path;
}
