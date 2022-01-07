
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotation_level ;
 int fprintf_filtered (int ,char*) ;
 int gdb_stderr ;

void
annotate_error_begin (void)
{
  if (annotation_level > 1)
    fprintf_filtered (gdb_stderr, "\n\032\032error-begin\n");
}
