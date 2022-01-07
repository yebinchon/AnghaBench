
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;


 int find_line_range_by_line (int *,void*) ;

__attribute__((used)) static int line_range_inline_cb(Dwarf_Die *in_die, void *data)
{
 find_line_range_by_line(in_die, data);






 return 0;
}
