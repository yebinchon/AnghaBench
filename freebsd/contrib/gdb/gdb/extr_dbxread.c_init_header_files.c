
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int n_allocated_this_object_header_files ;
 int* this_object_header_files ;
 scalar_t__ xmalloc (int) ;

void
init_header_files (void)
{
  n_allocated_this_object_header_files = 10;
  this_object_header_files = (int *) xmalloc (10 * sizeof (int));
}
