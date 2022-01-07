
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int octets_per_byte; void* display_endian; int symbol_is_valid; int symbol_at_address_func; int print_address_func; int memory_error_func; int read_memory_func; void* stream; int fprintf_func; void* endian; int arch; int flavour; } ;
typedef int fprintf_ftype ;


 void* BFD_ENDIAN_UNKNOWN ;
 int bfd_arch_unknown ;
 int bfd_target_unknown_flavour ;
 int buffer_read_memory ;
 int generic_print_address ;
 int generic_symbol_at_address ;
 int generic_symbol_is_valid ;
 int memset (struct disassemble_info*,int ,int) ;
 int perror_memory ;

void
init_disassemble_info (struct disassemble_info *info, void *stream,
         fprintf_ftype fprintf_func)
{
  memset (info, 0, sizeof (*info));

  info->flavour = bfd_target_unknown_flavour;
  info->arch = bfd_arch_unknown;
  info->endian = BFD_ENDIAN_UNKNOWN;
  info->octets_per_byte = 1;
  info->fprintf_func = fprintf_func;
  info->stream = stream;
  info->read_memory_func = buffer_read_memory;
  info->memory_error_func = perror_memory;
  info->print_address_func = generic_print_address;
  info->symbol_at_address_func = generic_symbol_at_address;
  info->symbol_is_valid = generic_symbol_is_valid;
  info->display_endian = BFD_ENDIAN_UNKNOWN;
}
