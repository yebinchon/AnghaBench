
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_vma ;
typedef int bfd ;
struct TYPE_3__ {unsigned char* contents; } ;
typedef TYPE_1__ asection ;


 int PLT64_ENTRY_SIZE ;
 int PLT64_LARGE_THRESHOLD ;
 unsigned int SPARC_NOP ;
 int bfd_put_32 (int *,int,unsigned char*) ;
 int bfd_put_64 (int *,int,unsigned char*) ;

__attribute__((used)) static int
sparc64_plt_entry_build (bfd *output_bfd, asection *splt, bfd_vma offset,
    bfd_vma max, bfd_vma *r_offset)
{
  unsigned char *entry = splt->contents + offset;
  const unsigned int nop = SPARC_NOP;
  int index;

  if (offset < (PLT64_LARGE_THRESHOLD * PLT64_ENTRY_SIZE))
    {
      unsigned int sethi, ba;

      *r_offset = offset;

      index = (offset / PLT64_ENTRY_SIZE);

      sethi = 0x03000000 | (index * PLT64_ENTRY_SIZE);
      ba = 0x30680000
 | (((splt->contents + PLT64_ENTRY_SIZE) - (entry + 4)) / 4 & 0x7ffff);

      bfd_put_32 (output_bfd, (bfd_vma) sethi, entry);
      bfd_put_32 (output_bfd, (bfd_vma) ba, entry + 4);
      bfd_put_32 (output_bfd, (bfd_vma) nop, entry + 8);
      bfd_put_32 (output_bfd, (bfd_vma) nop, entry + 12);
      bfd_put_32 (output_bfd, (bfd_vma) nop, entry + 16);
      bfd_put_32 (output_bfd, (bfd_vma) nop, entry + 20);
      bfd_put_32 (output_bfd, (bfd_vma) nop, entry + 24);
      bfd_put_32 (output_bfd, (bfd_vma) nop, entry + 28);
    }
  else
    {
      unsigned char *ptr;
      unsigned int ldx;
      int block, last_block, ofs, last_ofs, chunks_this_block;
      const int insn_chunk_size = (6 * 4);
      const int ptr_chunk_size = (1 * 8);
      const int entries_per_block = 160;
      const int block_size = entries_per_block * (insn_chunk_size
        + ptr_chunk_size);







      offset -= (PLT64_LARGE_THRESHOLD * PLT64_ENTRY_SIZE);
      max -= (PLT64_LARGE_THRESHOLD * PLT64_ENTRY_SIZE);

      block = offset / block_size;
      last_block = max / block_size;
      if (block != last_block)
 {
   chunks_this_block = 160;
 }
      else
 {
   last_ofs = max % block_size;
   chunks_this_block = last_ofs / (insn_chunk_size + ptr_chunk_size);
 }

      ofs = offset % block_size;

      index = (PLT64_LARGE_THRESHOLD +
        (block * 160) +
        (ofs / insn_chunk_size));

      ptr = splt->contents
 + (PLT64_LARGE_THRESHOLD * PLT64_ENTRY_SIZE)
 + (block * block_size)
 + (chunks_this_block * insn_chunk_size)
 + (ofs / insn_chunk_size) * ptr_chunk_size;

      *r_offset = (bfd_vma) (ptr - splt->contents);

      ldx = 0xc25be000 | ((ptr - (entry+4)) & 0x1fff);







      bfd_put_32 (output_bfd, (bfd_vma) 0x8a10000f, entry);
      bfd_put_32 (output_bfd, (bfd_vma) 0x40000002, entry + 4);
      bfd_put_32 (output_bfd, (bfd_vma) SPARC_NOP, entry + 8);
      bfd_put_32 (output_bfd, (bfd_vma) ldx, entry + 12);
      bfd_put_32 (output_bfd, (bfd_vma) 0x83c3c001, entry + 16);
      bfd_put_32 (output_bfd, (bfd_vma) 0x9e100005, entry + 20);

      bfd_put_64 (output_bfd, (bfd_vma) (splt->contents - (entry + 4)), ptr);
    }

  return index - 4;
}
