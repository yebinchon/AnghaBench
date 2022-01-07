
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fopen (int *,char*) ;
 int * procfs_file ;
 int * procfs_filename ;
 scalar_t__ procfs_trace ;

__attribute__((used)) static void
prepare_to_trace (void)
{
  if (procfs_trace)
    if (procfs_file == ((void*)0))
      if (procfs_filename != ((void*)0))
 procfs_file = fopen (procfs_filename, "a");
}
