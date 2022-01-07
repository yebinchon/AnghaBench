
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int section_offsets; } ;
struct line_header {char* statement_program_start; char* statement_program_end; int default_is_stmt; unsigned int num_file_names; char** include_dirs; unsigned char opcode_base; unsigned char line_range; unsigned char minimum_instruction_length; int* standard_opcode_lengths; struct file_entry* file_names; scalar_t__ line_base; } ;
struct file_entry {int dir_index; int name; } ;
struct dwarf2_cu {struct objfile* objfile; } ;
typedef int bfd ;
typedef unsigned char CORE_ADDR ;


 unsigned char ANOFFSET (int ,int ) ;
 int SECT_OFF_TEXT (struct objfile*) ;
 int add_file_name (struct line_header*,char*,unsigned int,unsigned int,unsigned int) ;
 unsigned char check_cu_functions (unsigned char,struct dwarf2_cu*) ;
 int complaint (int *,char*) ;
 int current_subfile ;
 int dwarf2_start_subfile (int ,char*) ;
 unsigned char read_1_byte (int *,char*) ;
 unsigned char read_2_bytes (int *,char*) ;
 unsigned char read_address (int *,char*,struct dwarf2_cu*,unsigned int*) ;
 unsigned int read_signed_leb128 (int *,char*,unsigned int*) ;
 char* read_string (int *,char*,unsigned int*) ;
 unsigned char read_unsigned_leb128 (int *,char*,unsigned int*) ;
 int record_line (int ,unsigned int,unsigned char) ;
 int symfile_complaints ;

__attribute__((used)) static void
dwarf_decode_lines (struct line_header *lh, char *comp_dir, bfd *abfd,
      struct dwarf2_cu *cu)
{
  char *line_ptr;
  char *line_end;
  unsigned int bytes_read;
  unsigned char op_code, extended_op, adj_opcode;
  CORE_ADDR baseaddr;
  struct objfile *objfile = cu->objfile;

  baseaddr = ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile));

  line_ptr = lh->statement_program_start;
  line_end = lh->statement_program_end;


  while (line_ptr < line_end)
    {

      CORE_ADDR address = 0;
      unsigned int file = 1;
      unsigned int line = 1;
      unsigned int column = 0;
      int is_stmt = lh->default_is_stmt;
      int basic_block = 0;
      int end_sequence = 0;


      if (lh->num_file_names >= file)
 {



          struct file_entry *fe = &lh->file_names[file - 1];
          char *dir;
          if (fe->dir_index)
            dir = lh->include_dirs[fe->dir_index - 1];
          else
            dir = comp_dir;
   dwarf2_start_subfile (fe->name, dir);
 }


      while (!end_sequence)
 {
   op_code = read_1_byte (abfd, line_ptr);
   line_ptr += 1;

   if (op_code >= lh->opcode_base)
     {
       adj_opcode = op_code - lh->opcode_base;
       address += (adj_opcode / lh->line_range)
  * lh->minimum_instruction_length;
       line += lh->line_base + (adj_opcode % lh->line_range);

       record_line (current_subfile, line,
                    check_cu_functions (address, cu));
       basic_block = 1;
     }
   else switch (op_code)
     {
     case 133:
       line_ptr += 1;
       extended_op = read_1_byte (abfd, line_ptr);
       line_ptr += 1;
       switch (extended_op)
  {
  case 139:
    end_sequence = 1;
    record_line (current_subfile, 0, address);
    break;
  case 138:
    address = read_address (abfd, line_ptr, cu, &bytes_read);
    line_ptr += bytes_read;
    address += baseaddr;
    break;
  case 140:
                  {
                    char *cur_file;
                    unsigned int dir_index, mod_time, length;

                    cur_file = read_string (abfd, line_ptr, &bytes_read);
                    line_ptr += bytes_read;
                    dir_index =
                      read_unsigned_leb128 (abfd, line_ptr, &bytes_read);
                    line_ptr += bytes_read;
                    mod_time =
                      read_unsigned_leb128 (abfd, line_ptr, &bytes_read);
                    line_ptr += bytes_read;
                    length =
                      read_unsigned_leb128 (abfd, line_ptr, &bytes_read);
                    line_ptr += bytes_read;
                    add_file_name (lh, cur_file, dir_index, mod_time, length);
                  }
    break;
  default:
    complaint (&symfile_complaints,
        "mangled .debug_line section");
    return;
  }
       break;
     case 134:
       record_line (current_subfile, line,
                    check_cu_functions (address, cu));
       basic_block = 0;
       break;
     case 136:
       address += lh->minimum_instruction_length
  * read_unsigned_leb128 (abfd, line_ptr, &bytes_read);
       line_ptr += bytes_read;
       break;
     case 137:
       line += read_signed_leb128 (abfd, line_ptr, &bytes_read);
       line_ptr += bytes_read;
       break;
     case 128:
              {



                struct file_entry *fe;
                char *dir;
                file = read_unsigned_leb128 (abfd, line_ptr, &bytes_read);
                line_ptr += bytes_read;
                fe = &lh->file_names[file - 1];
                if (fe->dir_index)
                  dir = lh->include_dirs[fe->dir_index - 1];
                else
                  dir = comp_dir;
                dwarf2_start_subfile (fe->name, dir);
              }
       break;
     case 129:
       column = read_unsigned_leb128 (abfd, line_ptr, &bytes_read);
       line_ptr += bytes_read;
       break;
     case 131:
       is_stmt = (!is_stmt);
       break;
     case 130:
       basic_block = 1;
       break;





     case 135:
       address += (lh->minimum_instruction_length
     * ((255 - lh->opcode_base) / lh->line_range));
       break;
     case 132:
       address += read_2_bytes (abfd, line_ptr);
       line_ptr += 2;
       break;
     default:
       {
  int i;
  for (i = 0; i < lh->standard_opcode_lengths[op_code]; i++)
    {
      (void) read_unsigned_leb128 (abfd, line_ptr, &bytes_read);
      line_ptr += bytes_read;
    }
       }
     }
 }
    }
}
