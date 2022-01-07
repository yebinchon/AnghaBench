
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct elf_backend_data {TYPE_1__* s; } ;
typedef scalar_t__ file_ptr ;
typedef size_t bfd_size_type ;
typedef int const bfd_byte ;
typedef int bfd ;
struct TYPE_6__ {scalar_t__ sh_size; scalar_t__ sh_offset; } ;
struct TYPE_7__ {TYPE_2__ symtab_shndx_hdr; TYPE_2__ symtab_hdr; } ;
struct TYPE_5__ {size_t sizeof_sym; int (* swap_symbol_in ) (int *,int const*,void*,int *) ;} ;
typedef int Elf_Internal_Sym ;
typedef TYPE_2__ Elf_Internal_Shdr ;
typedef void Elf_External_Sym_Shndx ;


 int SEEK_SET ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,unsigned long) ;
 size_t bfd_bread (void*,size_t,int *) ;
 void* bfd_malloc2 (size_t,int) ;
 scalar_t__ bfd_seek (int *,scalar_t__,int ) ;
 TYPE_3__* elf_tdata (int *) ;
 int free (void*) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int stub1 (int *,int const*,void*,int *) ;
 int stub2 (int ,int *,unsigned long) ;

Elf_Internal_Sym *
bfd_elf_get_elf_syms (bfd *ibfd,
        Elf_Internal_Shdr *symtab_hdr,
        size_t symcount,
        size_t symoffset,
        Elf_Internal_Sym *intsym_buf,
        void *extsym_buf,
        Elf_External_Sym_Shndx *extshndx_buf)
{
  Elf_Internal_Shdr *shndx_hdr;
  void *alloc_ext;
  const bfd_byte *esym;
  Elf_External_Sym_Shndx *alloc_extshndx;
  Elf_External_Sym_Shndx *shndx;
  Elf_Internal_Sym *isym;
  Elf_Internal_Sym *isymend;
  const struct elf_backend_data *bed;
  size_t extsym_size;
  bfd_size_type amt;
  file_ptr pos;

  if (symcount == 0)
    return intsym_buf;


  shndx_hdr = ((void*)0);
  if (symtab_hdr == &elf_tdata (ibfd)->symtab_hdr)
    shndx_hdr = &elf_tdata (ibfd)->symtab_shndx_hdr;


  alloc_ext = ((void*)0);
  alloc_extshndx = ((void*)0);
  bed = get_elf_backend_data (ibfd);
  extsym_size = bed->s->sizeof_sym;
  amt = symcount * extsym_size;
  pos = symtab_hdr->sh_offset + symoffset * extsym_size;
  if (extsym_buf == ((void*)0))
    {
      alloc_ext = bfd_malloc2 (symcount, extsym_size);
      extsym_buf = alloc_ext;
    }
  if (extsym_buf == ((void*)0)
      || bfd_seek (ibfd, pos, SEEK_SET) != 0
      || bfd_bread (extsym_buf, amt, ibfd) != amt)
    {
      intsym_buf = ((void*)0);
      goto out;
    }

  if (shndx_hdr == ((void*)0) || shndx_hdr->sh_size == 0)
    extshndx_buf = ((void*)0);
  else
    {
      amt = symcount * sizeof (Elf_External_Sym_Shndx);
      pos = shndx_hdr->sh_offset + symoffset * sizeof (Elf_External_Sym_Shndx);
      if (extshndx_buf == ((void*)0))
 {
   alloc_extshndx = bfd_malloc2 (symcount,
     sizeof (Elf_External_Sym_Shndx));
   extshndx_buf = alloc_extshndx;
 }
      if (extshndx_buf == ((void*)0)
   || bfd_seek (ibfd, pos, SEEK_SET) != 0
   || bfd_bread (extshndx_buf, amt, ibfd) != amt)
 {
   intsym_buf = ((void*)0);
   goto out;
 }
    }

  if (intsym_buf == ((void*)0))
    {
      intsym_buf = bfd_malloc2 (symcount, sizeof (Elf_Internal_Sym));
      if (intsym_buf == ((void*)0))
 goto out;
    }


  isymend = intsym_buf + symcount;
  for (esym = extsym_buf, isym = intsym_buf, shndx = extshndx_buf;
       isym < isymend;
       esym += extsym_size, isym++, shndx = shndx != ((void*)0) ? shndx + 1 : ((void*)0))
    if (!(*bed->s->swap_symbol_in) (ibfd, esym, shndx, isym))
      {
 symoffset += (esym - (bfd_byte *) extsym_buf) / extsym_size;
 (*_bfd_error_handler) (_("%B symbol number %lu references "
     "nonexistent SHT_SYMTAB_SHNDX section"),
          ibfd, (unsigned long) symoffset);
 intsym_buf = ((void*)0);
 goto out;
      }

 out:
  if (alloc_ext != ((void*)0))
    free (alloc_ext);
  if (alloc_extshndx != ((void*)0))
    free (alloc_extshndx);

  return intsym_buf;
}
