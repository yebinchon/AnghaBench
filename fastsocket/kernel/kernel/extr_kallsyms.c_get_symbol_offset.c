
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t* kallsyms_markers ;
 int const* kallsyms_names ;

__attribute__((used)) static unsigned int get_symbol_offset(unsigned long pos)
{
 const u8 *name;
 int i;





 name = &kallsyms_names[kallsyms_markers[pos >> 8]];







 for (i = 0; i < (pos & 0xFF); i++)
  name = name + (*name) + 1;

 return name - kallsyms_names;
}
