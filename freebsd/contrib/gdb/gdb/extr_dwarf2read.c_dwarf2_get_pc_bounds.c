
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int * obfd; } ;
struct comp_unit_head {unsigned int addr_size; int base_known; unsigned int base_address; } ;
struct dwarf2_cu {struct comp_unit_head header; struct objfile* objfile; } ;
struct die_info {int dummy; } ;
struct attribute {int dummy; } ;
typedef int bfd ;
typedef unsigned int CORE_ADDR ;


 unsigned int DW_ADDR (struct attribute*) ;
 int DW_AT_high_pc ;
 int DW_AT_low_pc ;
 int DW_AT_ranges ;
 unsigned int DW_UNSND (struct attribute*) ;
 int HAS_RELOC ;
 int bfd_get_file_flags (int *) ;
 int complaint (int *,char*,...) ;
 struct attribute* dwarf2_attr (struct die_info*,int ,struct dwarf2_cu*) ;
 char* dwarf_ranges_buffer ;
 unsigned int dwarf_ranges_size ;
 unsigned int read_address (int *,char*,struct dwarf2_cu*,int*) ;
 int symfile_complaints ;

__attribute__((used)) static int
dwarf2_get_pc_bounds (struct die_info *die, CORE_ADDR *lowpc,
        CORE_ADDR *highpc, struct dwarf2_cu *cu)
{
  struct objfile *objfile = cu->objfile;
  struct comp_unit_head *cu_header = &cu->header;
  struct attribute *attr;
  bfd *obfd = objfile->obfd;
  CORE_ADDR low = 0;
  CORE_ADDR high = 0;
  int ret = 0;

  attr = dwarf2_attr (die, DW_AT_high_pc, cu);
  if (attr)
    {
      high = DW_ADDR (attr);
      attr = dwarf2_attr (die, DW_AT_low_pc, cu);
      if (attr)
 low = DW_ADDR (attr);
      else

 return 0;


      ret = 1;
    }
  else
    {
      attr = dwarf2_attr (die, DW_AT_ranges, cu);
      if (attr != ((void*)0))
 {
   unsigned int addr_size = cu_header->addr_size;
   CORE_ADDR mask = ~(~(CORE_ADDR)1 << (addr_size * 8 - 1));


   unsigned int offset = DW_UNSND (attr);

   CORE_ADDR base;
   int found_base;
   int dummy;
   char *buffer;
   CORE_ADDR marker;
   int low_set;

   found_base = cu_header->base_known;
   base = cu_header->base_address;

   if (offset >= dwarf_ranges_size)
     {
       complaint (&symfile_complaints,
                  "Offset %d out of bounds for DW_AT_ranges attribute",
    offset);
       return 0;
     }
   buffer = dwarf_ranges_buffer + offset;


   marker = read_address (obfd, buffer, cu, &dummy);
   if ((marker & mask) == mask)
     {


       base = read_address (obfd, buffer + addr_size, cu, &dummy);
       buffer += 2 * addr_size;
       offset += 2 * addr_size;
       found_base = 1;
     }

   low_set = 0;

   while (1)
     {
       CORE_ADDR range_beginning, range_end;

       range_beginning = read_address (obfd, buffer, cu, &dummy);
       buffer += addr_size;
       range_end = read_address (obfd, buffer, cu, &dummy);
       buffer += addr_size;
       offset += 2 * addr_size;


       if (range_beginning == 0 && range_end == 0)

  break;




       if ((range_beginning & mask) == mask)
  {


    base = read_address (obfd, buffer + addr_size, cu, &dummy);
    found_base = 1;
    continue;
  }

       if (!found_base)
  {


    complaint (&symfile_complaints,
        "Invalid .debug_ranges data (no base address)");
    return 0;
  }

       range_beginning += base;
       range_end += base;





       if (! low_set)
  {
    low = range_beginning;
    high = range_end;
    low_set = 1;
  }
       else
  {
    if (range_beginning < low)
      low = range_beginning;
    if (range_end > high)
      high = range_end;
  }
     }

   if (! low_set)


     return 0;

   ret = -1;
 }
    }

  if (high < low)
    return 0;
  if (low == 0 && (bfd_get_file_flags (obfd) & HAS_RELOC) == 0)
    return 0;

  *lowpc = low;
  *highpc = high;
  return ret;
}
