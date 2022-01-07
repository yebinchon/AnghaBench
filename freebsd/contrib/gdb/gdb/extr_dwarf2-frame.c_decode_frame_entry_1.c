
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dwarf2_fde {char* instructions; char* end; TYPE_2__* cie; void* address_range; void* initial_location; } ;
struct dwarf2_cie {char* initial_instructions; int saw_z_augmentation; char* end; int encoding; scalar_t__ return_address_register; int data_alignment_factor; void* code_alignment_factor; scalar_t__ cie_pointer; } ;
struct comp_unit {char* dwarf_frame_buffer; int dwarf_frame_size; int abfd; TYPE_1__* objfile; int addr_size; } ;
typedef scalar_t__ ULONGEST ;
struct TYPE_4__ {int encoding; scalar_t__ saw_z_augmentation; } ;
struct TYPE_3__ {int objfile_obstack; } ;
typedef int LONGEST ;


 scalar_t__ DW64_CIE_ID ;
 scalar_t__ DW_CIE_ID ;
 scalar_t__ DW_CIE_VERSION ;
 int TYPE_LENGTH (int ) ;
 int add_cie (struct comp_unit*,struct dwarf2_cie*) ;
 int add_fde (struct comp_unit*,struct dwarf2_fde*) ;
 int builtin_type_void_data_ptr ;
 int decode_frame_entry (struct comp_unit*,char*,int) ;
 int encoding_for_size (int ) ;
 void* find_cie (struct comp_unit*,scalar_t__) ;
 int gdb_assert (int ) ;
 scalar_t__ obstack_alloc (int *,int) ;
 scalar_t__ read_1_byte (int ,char*) ;
 scalar_t__ read_4_bytes (int ,char*) ;
 scalar_t__ read_8_bytes (int ,char*) ;
 void* read_encoded_value (struct comp_unit*,int,char*,unsigned int*) ;
 int read_initial_length (int ,char*,unsigned int*) ;
 int read_signed_leb128 (int ,char*,unsigned int*) ;
 void* read_unsigned_leb128 (int ,char*,unsigned int*) ;
 int size_of_encoded_value (int ) ;
 int strlen (char*) ;

__attribute__((used)) static char *
decode_frame_entry_1 (struct comp_unit *unit, char *start, int eh_frame_p)
{
  char *buf;
  LONGEST length;
  unsigned int bytes_read;
  int dwarf64_p;
  ULONGEST cie_id;
  ULONGEST cie_pointer;
  char *end;

  buf = start;
  length = read_initial_length (unit->abfd, buf, &bytes_read);
  buf += bytes_read;
  end = buf + length;


  if (end > unit->dwarf_frame_buffer + unit->dwarf_frame_size)
    return ((void*)0);

  if (length == 0)
    return end;


  dwarf64_p = (bytes_read == 12);


  if (eh_frame_p)
    cie_id = 0;
  else if (dwarf64_p)
    cie_id = DW64_CIE_ID;
  else
    cie_id = DW_CIE_ID;

  if (dwarf64_p)
    {
      cie_pointer = read_8_bytes (unit->abfd, buf);
      buf += 8;
    }
  else
    {
      cie_pointer = read_4_bytes (unit->abfd, buf);
      buf += 4;
    }

  if (cie_pointer == cie_id)
    {

      struct dwarf2_cie *cie;
      char *augmentation;


      cie_pointer = start - unit->dwarf_frame_buffer;


      if (find_cie (unit, cie_pointer))
 return end;

      cie = (struct dwarf2_cie *)
 obstack_alloc (&unit->objfile->objfile_obstack,
         sizeof (struct dwarf2_cie));
      cie->initial_instructions = ((void*)0);
      cie->cie_pointer = cie_pointer;




      cie->encoding = encoding_for_size (unit->addr_size);


      if (read_1_byte (unit->abfd, buf) != DW_CIE_VERSION)
 return ((void*)0);
      buf += 1;


      augmentation = buf;
      buf = augmentation + strlen (augmentation) + 1;




      if (augmentation[0] == 'e' && augmentation[1] == 'h')
 {

   buf += TYPE_LENGTH (builtin_type_void_data_ptr);
   augmentation += 2;
 }

      cie->code_alignment_factor =
 read_unsigned_leb128 (unit->abfd, buf, &bytes_read);
      buf += bytes_read;

      cie->data_alignment_factor =
 read_signed_leb128 (unit->abfd, buf, &bytes_read);
      buf += bytes_read;

      cie->return_address_register = read_1_byte (unit->abfd, buf);
      buf += 1;

      cie->saw_z_augmentation = (*augmentation == 'z');
      if (cie->saw_z_augmentation)
 {
   ULONGEST length;

   length = read_unsigned_leb128 (unit->abfd, buf, &bytes_read);
   buf += bytes_read;
   if (buf > end)
     return ((void*)0);
   cie->initial_instructions = buf + length;
   augmentation++;
 }

      while (*augmentation)
 {

   if (*augmentation == 'L')
     {

       buf++;
       augmentation++;
     }


   else if (*augmentation == 'R')
     {
       cie->encoding = *buf++;
       augmentation++;
     }


   else if (*augmentation == 'P')
     {

       buf += size_of_encoded_value (*buf++);
       augmentation++;
     }



   else
     {
       if (cie->initial_instructions == ((void*)0))
  return end;


       buf = cie->initial_instructions;
       break;
     }
 }

      cie->initial_instructions = buf;
      cie->end = end;

      add_cie (unit, cie);
    }
  else
    {

      struct dwarf2_fde *fde;





      if (eh_frame_p)
 {
   cie_pointer = buf - unit->dwarf_frame_buffer - cie_pointer;
   cie_pointer -= (dwarf64_p ? 8 : 4);
 }


      if (cie_pointer >= unit->dwarf_frame_size)
 return ((void*)0);

      fde = (struct dwarf2_fde *)
 obstack_alloc (&unit->objfile->objfile_obstack,
         sizeof (struct dwarf2_fde));
      fde->cie = find_cie (unit, cie_pointer);
      if (fde->cie == ((void*)0))
 {
   decode_frame_entry (unit, unit->dwarf_frame_buffer + cie_pointer,
         eh_frame_p);
   fde->cie = find_cie (unit, cie_pointer);
 }

      gdb_assert (fde->cie != ((void*)0));

      fde->initial_location =
 read_encoded_value (unit, fde->cie->encoding, buf, &bytes_read);
      buf += bytes_read;

      fde->address_range =
 read_encoded_value (unit, fde->cie->encoding & 0x0f, buf, &bytes_read);
      buf += bytes_read;





      if (fde->cie->saw_z_augmentation)
 {
   ULONGEST length;

   length = read_unsigned_leb128 (unit->abfd, buf, &bytes_read);
   buf += bytes_read + length;
   if (buf > end)
     return ((void*)0);
 }

      fde->instructions = buf;
      fde->end = end;

      add_fde (unit, fde);
    }

  return end;
}
