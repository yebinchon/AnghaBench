
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_file_list {int * map; } ;


 int print_line (struct print_file_list*,unsigned int) ;

__attribute__((used)) static void
dump_lines (struct print_file_list *p, unsigned int start, unsigned int end)
{
  if (p->map == ((void*)0))
    return;
  while (start <= end)
    {
      print_line (p, start);
      start++;
    }
}
