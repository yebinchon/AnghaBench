
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_header {int total_length; char* statement_program_end; int opcode_base; unsigned char* standard_opcode_lengths; char* statement_program_start; void* line_range; int line_base; void* default_is_stmt; void* minimum_instruction_length; int header_length; int version; } ;
struct dwarf2_cu {int header; } ;
struct cleanup {int dummy; } ;
typedef int make_cleanup_ftype ;
typedef int bfd ;


 int add_file_name (struct line_header*,char*,unsigned int,unsigned int,unsigned int) ;
 int add_include_dir (struct line_header*,char*) ;
 int complaint (int *,char*) ;
 int discard_cleanups (struct cleanup*) ;
 int dwarf2_statement_list_fits_in_line_number_section_complaint () ;
 char* dwarf_line_buffer ;
 unsigned int dwarf_line_size ;
 scalar_t__ free_line_header ;
 struct cleanup* make_cleanup (int *,void*) ;
 int memset (struct line_header*,int ,int) ;
 void* read_1_byte (int *,char*) ;
 int read_1_signed_byte (int *,char*) ;
 int read_2_bytes (int *,char*) ;
 int read_initial_length (int *,char*,int *,int*) ;
 int read_offset (int *,char*,int *,int*) ;
 char* read_string (int *,char*,int*) ;
 unsigned int read_unsigned_leb128 (int *,char*,int*) ;
 int symfile_complaints ;
 struct line_header* xmalloc (int) ;

__attribute__((used)) static struct line_header *
dwarf_decode_line_header (unsigned int offset, bfd *abfd,
     struct dwarf2_cu *cu)
{
  struct cleanup *back_to;
  struct line_header *lh;
  char *line_ptr;
  int bytes_read;
  int i;
  char *cur_dir, *cur_file;

  if (dwarf_line_buffer == ((void*)0))
    {
      complaint (&symfile_complaints, "missing .debug_line section");
      return 0;
    }



  if (offset + 4 >= dwarf_line_size)
    {
      dwarf2_statement_list_fits_in_line_number_section_complaint ();
      return 0;
    }

  lh = xmalloc (sizeof (*lh));
  memset (lh, 0, sizeof (*lh));
  back_to = make_cleanup ((make_cleanup_ftype *) free_line_header,
                          (void *) lh);

  line_ptr = dwarf_line_buffer + offset;


  lh->total_length = read_initial_length (abfd, line_ptr, &cu->header, &bytes_read);
  line_ptr += bytes_read;
  if (line_ptr + lh->total_length > dwarf_line_buffer + dwarf_line_size)
    {
      dwarf2_statement_list_fits_in_line_number_section_complaint ();
      return 0;
    }
  lh->statement_program_end = line_ptr + lh->total_length;
  lh->version = read_2_bytes (abfd, line_ptr);
  line_ptr += 2;
  lh->header_length = read_offset (abfd, line_ptr, &cu->header, &bytes_read);
  line_ptr += bytes_read;
  lh->minimum_instruction_length = read_1_byte (abfd, line_ptr);
  line_ptr += 1;
  lh->default_is_stmt = read_1_byte (abfd, line_ptr);
  line_ptr += 1;
  lh->line_base = read_1_signed_byte (abfd, line_ptr);
  line_ptr += 1;
  lh->line_range = read_1_byte (abfd, line_ptr);
  line_ptr += 1;
  lh->opcode_base = read_1_byte (abfd, line_ptr);
  line_ptr += 1;
  lh->standard_opcode_lengths
    = (unsigned char *) xmalloc (lh->opcode_base * sizeof (unsigned char));

  lh->standard_opcode_lengths[0] = 1;
  for (i = 1; i < lh->opcode_base; ++i)
    {
      lh->standard_opcode_lengths[i] = read_1_byte (abfd, line_ptr);
      line_ptr += 1;
    }


  while ((cur_dir = read_string (abfd, line_ptr, &bytes_read)) != ((void*)0))
    {
      line_ptr += bytes_read;
      add_include_dir (lh, cur_dir);
    }
  line_ptr += bytes_read;


  while ((cur_file = read_string (abfd, line_ptr, &bytes_read)) != ((void*)0))
    {
      unsigned int dir_index, mod_time, length;

      line_ptr += bytes_read;
      dir_index = read_unsigned_leb128 (abfd, line_ptr, &bytes_read);
      line_ptr += bytes_read;
      mod_time = read_unsigned_leb128 (abfd, line_ptr, &bytes_read);
      line_ptr += bytes_read;
      length = read_unsigned_leb128 (abfd, line_ptr, &bytes_read);
      line_ptr += bytes_read;

      add_file_name (lh, cur_file, dir_index, mod_time, length);
    }
  line_ptr += bytes_read;
  lh->statement_program_start = line_ptr;

  if (line_ptr > dwarf_line_buffer + dwarf_line_size)
    complaint (&symfile_complaints,
        "line number info header doesn't fit in `.debug_line' section");

  discard_cleanups (back_to);
  return lh;
}
