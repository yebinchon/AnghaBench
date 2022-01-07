
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comp_unit_head {int abbrev_offset; struct abbrev_info** dwarf2_abbrevs; } ;
struct dwarf2_cu {struct comp_unit_head header; } ;
struct attr_abbrev {unsigned int name; unsigned int form; } ;
struct abbrev_info {unsigned int number; int num_attrs; struct abbrev_info* next; struct attr_abbrev* attrs; int has_children; void* tag; } ;
typedef int bfd ;


 int ABBREV_HASH_SIZE ;
 int ATTR_ALLOC_CHUNK ;
 int * dwarf2_lookup_abbrev (unsigned int,struct dwarf2_cu*) ;
 char* dwarf_abbrev_buffer ;
 unsigned int dwarf_abbrev_size ;
 struct abbrev_info* dwarf_alloc_abbrev () ;
 int memset (struct abbrev_info**,int ,int) ;
 int read_1_byte (int *,char*) ;
 void* read_unsigned_leb128 (int *,char*,unsigned int*) ;
 scalar_t__ xrealloc (struct attr_abbrev*,int) ;

__attribute__((used)) static void
dwarf2_read_abbrevs (bfd *abfd, struct dwarf2_cu *cu)
{
  struct comp_unit_head *cu_header = &cu->header;
  char *abbrev_ptr;
  struct abbrev_info *cur_abbrev;
  unsigned int abbrev_number, bytes_read, abbrev_name;
  unsigned int abbrev_form, hash_number;


  memset (cu_header->dwarf2_abbrevs, 0,
          ABBREV_HASH_SIZE*sizeof (struct abbrev_info *));

  abbrev_ptr = dwarf_abbrev_buffer + cu_header->abbrev_offset;
  abbrev_number = read_unsigned_leb128 (abfd, abbrev_ptr, &bytes_read);
  abbrev_ptr += bytes_read;


  while (abbrev_number)
    {
      cur_abbrev = dwarf_alloc_abbrev ();


      cur_abbrev->number = abbrev_number;
      cur_abbrev->tag = read_unsigned_leb128 (abfd, abbrev_ptr, &bytes_read);
      abbrev_ptr += bytes_read;
      cur_abbrev->has_children = read_1_byte (abfd, abbrev_ptr);
      abbrev_ptr += 1;


      abbrev_name = read_unsigned_leb128 (abfd, abbrev_ptr, &bytes_read);
      abbrev_ptr += bytes_read;
      abbrev_form = read_unsigned_leb128 (abfd, abbrev_ptr, &bytes_read);
      abbrev_ptr += bytes_read;
      while (abbrev_name)
 {
   if ((cur_abbrev->num_attrs % ATTR_ALLOC_CHUNK) == 0)
     {
       cur_abbrev->attrs = (struct attr_abbrev *)
  xrealloc (cur_abbrev->attrs,
     (cur_abbrev->num_attrs + ATTR_ALLOC_CHUNK)
     * sizeof (struct attr_abbrev));
     }
   cur_abbrev->attrs[cur_abbrev->num_attrs].name = abbrev_name;
   cur_abbrev->attrs[cur_abbrev->num_attrs++].form = abbrev_form;
   abbrev_name = read_unsigned_leb128 (abfd, abbrev_ptr, &bytes_read);
   abbrev_ptr += bytes_read;
   abbrev_form = read_unsigned_leb128 (abfd, abbrev_ptr, &bytes_read);
   abbrev_ptr += bytes_read;
 }

      hash_number = abbrev_number % ABBREV_HASH_SIZE;
      cur_abbrev->next = cu_header->dwarf2_abbrevs[hash_number];
      cu_header->dwarf2_abbrevs[hash_number] = cur_abbrev;
      if ((unsigned int) (abbrev_ptr - dwarf_abbrev_buffer)
   >= dwarf_abbrev_size)
 break;
      abbrev_number = read_unsigned_leb128 (abfd, abbrev_ptr, &bytes_read);
      abbrev_ptr += bytes_read;
      if (dwarf2_lookup_abbrev (abbrev_number, cu) != ((void*)0))
 break;
    }
}
