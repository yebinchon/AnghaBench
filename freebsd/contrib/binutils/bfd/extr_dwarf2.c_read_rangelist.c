
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comp_unit {unsigned long base_address; int addr_size; int abfd; TYPE_1__* stash; } ;
struct arange {int dummy; } ;
typedef unsigned long bfd_vma ;
typedef int bfd_uint64_t ;
typedef int bfd_byte ;
struct TYPE_2__ {int * dwarf_ranges_buffer; } ;


 int arange_add (int ,struct arange*,unsigned long,unsigned long) ;
 unsigned long read_4_bytes (int ,int *) ;
 unsigned long read_8_bytes (int ,int *) ;
 int read_debug_ranges (struct comp_unit*) ;

__attribute__((used)) static void
read_rangelist (struct comp_unit *unit, struct arange *arange, bfd_uint64_t offset)
{
  bfd_byte *ranges_ptr;
  bfd_vma base_address = unit->base_address;

  if (! unit->stash->dwarf_ranges_buffer)
    {
      if (! read_debug_ranges (unit))
 return;
    }
  ranges_ptr = unit->stash->dwarf_ranges_buffer + offset;

  for (;;)
    {
      bfd_vma low_pc;
      bfd_vma high_pc;

      if (unit->addr_size == 4)
 {
   low_pc = read_4_bytes (unit->abfd, ranges_ptr);
   ranges_ptr += 4;
   high_pc = read_4_bytes (unit->abfd, ranges_ptr);
   ranges_ptr += 4;
 }
      else
 {
   low_pc = read_8_bytes (unit->abfd, ranges_ptr);
   ranges_ptr += 8;
   high_pc = read_8_bytes (unit->abfd, ranges_ptr);
   ranges_ptr += 8;
 }
      if (low_pc == 0 && high_pc == 0)
 break;
      if (low_pc == -1UL && high_pc != -1UL)
 base_address = high_pc;
      else
 arange_add (unit->abfd, arange, base_address + low_pc, base_address + high_pc);
    }
}
