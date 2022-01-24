#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct elf_backend_data {TYPE_1__* s; } ;
typedef  scalar_t__ file_ptr ;
typedef  size_t bfd_size_type ;
typedef  int /*<<< orphan*/  const bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {scalar_t__ sh_size; scalar_t__ sh_offset; } ;
struct TYPE_7__ {TYPE_2__ symtab_shndx_hdr; TYPE_2__ symtab_hdr; } ;
struct TYPE_5__ {size_t sizeof_sym; int /*<<< orphan*/  (* swap_symbol_in ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  Elf_Internal_Sym ;
typedef  TYPE_2__ Elf_Internal_Shdr ;
typedef  void Elf_External_Sym_Shndx ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 size_t FUNC2 (void*,size_t,int /*<<< orphan*/ *) ; 
 void* FUNC3 (size_t,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 struct elf_backend_data* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 

Elf_Internal_Sym *
FUNC10 (bfd *ibfd,
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

  /* Normal syms might have section extension entries.  */
  shndx_hdr = NULL;
  if (symtab_hdr == &FUNC5 (ibfd)->symtab_hdr)
    shndx_hdr = &FUNC5 (ibfd)->symtab_shndx_hdr;

  /* Read the symbols.  */
  alloc_ext = NULL;
  alloc_extshndx = NULL;
  bed = FUNC7 (ibfd);
  extsym_size = bed->s->sizeof_sym;
  amt = symcount * extsym_size;
  pos = symtab_hdr->sh_offset + symoffset * extsym_size;
  if (extsym_buf == NULL)
    {
      alloc_ext = FUNC3 (symcount, extsym_size);
      extsym_buf = alloc_ext;
    }
  if (extsym_buf == NULL
      || FUNC4 (ibfd, pos, SEEK_SET) != 0
      || FUNC2 (extsym_buf, amt, ibfd) != amt)
    {
      intsym_buf = NULL;
      goto out;
    }

  if (shndx_hdr == NULL || shndx_hdr->sh_size == 0)
    extshndx_buf = NULL;
  else
    {
      amt = symcount * sizeof (Elf_External_Sym_Shndx);
      pos = shndx_hdr->sh_offset + symoffset * sizeof (Elf_External_Sym_Shndx);
      if (extshndx_buf == NULL)
	{
	  alloc_extshndx = FUNC3 (symcount,
					sizeof (Elf_External_Sym_Shndx));
	  extshndx_buf = alloc_extshndx;
	}
      if (extshndx_buf == NULL
	  || FUNC4 (ibfd, pos, SEEK_SET) != 0
	  || FUNC2 (extshndx_buf, amt, ibfd) != amt)
	{
	  intsym_buf = NULL;
	  goto out;
	}
    }

  if (intsym_buf == NULL)
    {
      intsym_buf = FUNC3 (symcount, sizeof (Elf_Internal_Sym));
      if (intsym_buf == NULL)
	goto out;
    }

  /* Convert the symbols to internal form.  */
  isymend = intsym_buf + symcount;
  for (esym = extsym_buf, isym = intsym_buf, shndx = extshndx_buf;
       isym < isymend;
       esym += extsym_size, isym++, shndx = shndx != NULL ? shndx + 1 : NULL)
    if (!(*bed->s->swap_symbol_in) (ibfd, esym, shndx, isym))
      {
	symoffset += (esym - (bfd_byte *) extsym_buf) / extsym_size;
	FUNC1) (FUNC0("%B symbol number %lu references "
				 "nonexistent SHT_SYMTAB_SHNDX section"),
			       ibfd, (unsigned long) symoffset);
	intsym_buf = NULL;
	goto out;
      }

 out:
  if (alloc_ext != NULL)
    FUNC6 (alloc_ext);
  if (alloc_extshndx != NULL)
    FUNC6 (alloc_extshndx);

  return intsym_buf;
}