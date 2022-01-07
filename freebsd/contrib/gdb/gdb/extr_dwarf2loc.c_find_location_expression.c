
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwarf2_loclist_baton {unsigned int base_address; char* data; int size; TYPE_1__* objfile; } ;
struct TYPE_2__ {int section_offsets; } ;
typedef unsigned int CORE_ADDR ;


 unsigned int ANOFFSET (int ,int ) ;
 int SECT_OFF_TEXT (TYPE_1__*) ;
 unsigned int TARGET_ADDR_BIT ;
 unsigned int TARGET_CHAR_BIT ;
 unsigned int dwarf2_read_address (char*,char*,unsigned int*) ;
 unsigned int extract_unsigned_integer (char*,int) ;

__attribute__((used)) static char *
find_location_expression (struct dwarf2_loclist_baton *baton,
     size_t *locexpr_length, CORE_ADDR pc)
{
  CORE_ADDR low, high;
  char *loc_ptr, *buf_end;
  unsigned int addr_size = TARGET_ADDR_BIT / TARGET_CHAR_BIT, length;
  CORE_ADDR base_mask = ~(~(CORE_ADDR)1 << (addr_size * 8 - 1));

  CORE_ADDR base_offset = ANOFFSET (baton->objfile->section_offsets,
        SECT_OFF_TEXT (baton->objfile));
  CORE_ADDR base_address = baton->base_address + base_offset;

  loc_ptr = baton->data;
  buf_end = baton->data + baton->size;

  while (1)
    {
      low = dwarf2_read_address (loc_ptr, buf_end, &length);
      loc_ptr += length;
      high = dwarf2_read_address (loc_ptr, buf_end, &length);
      loc_ptr += length;


      if (low == 0 && high == 0)
 return ((void*)0);


      if ((low & base_mask) == base_mask)
 {
   base_address = high;
   continue;
 }


      low += base_address;
      high += base_address;

      length = extract_unsigned_integer (loc_ptr, 2);
      loc_ptr += 2;

      if (pc >= low && pc < high)
 {
   *locexpr_length = length;
   return loc_ptr;
 }

      loc_ptr += length;
    }
}
