
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ n_allocated_this_object_header_files ;
 int * this_object_header_files ;
 int xfree (int *) ;

void
free_header_files (void)
{
  if (this_object_header_files)
    {
      xfree (this_object_header_files);
      this_object_header_files = ((void*)0);
    }
  n_allocated_this_object_header_files = 0;
}
