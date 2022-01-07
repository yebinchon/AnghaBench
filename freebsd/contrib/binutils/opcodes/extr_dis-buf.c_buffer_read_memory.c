
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {unsigned int octets_per_byte; unsigned int buffer_length; unsigned int buffer_vma; scalar_t__ buffer; } ;
typedef unsigned int bfd_vma ;
typedef int bfd_byte ;


 int EIO ;
 int memcpy (int *,scalar_t__,unsigned int) ;

int
buffer_read_memory (bfd_vma memaddr,
      bfd_byte *myaddr,
      unsigned int length,
      struct disassemble_info *info)
{
  unsigned int opb = info->octets_per_byte;
  unsigned int end_addr_offset = length / opb;
  unsigned int max_addr_offset = info->buffer_length / opb;
  unsigned int octets = (memaddr - info->buffer_vma) * opb;

  if (memaddr < info->buffer_vma
      || memaddr - info->buffer_vma + end_addr_offset > max_addr_offset)

    return EIO;
  memcpy (myaddr, info->buffer + octets, length);

  return 0;
}
