
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_source_file {struct macro_source_file* included_by; } ;



__attribute__((used)) static int
inclusion_depth (struct macro_source_file *file)
{
  int depth;

  for (depth = 0; file->included_by; depth++)
    file = file->included_by;

  return depth;
}
