
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct core_fns {scalar_t__ (* check_format ) (int *) ;struct core_fns* next; } ;
typedef int bfd ;


 struct core_fns* core_file_fns ;
 scalar_t__ stub1 (int *) ;

__attribute__((used)) static int
gdb_check_format (bfd *abfd)
{
  struct core_fns *cf;

  for (cf = core_file_fns; cf != ((void*)0); cf = cf->next)
    {
      if (cf->check_format (abfd))
 {
   return (1);
 }
    }
  return (0);
}
