
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct elf_symbuf_symbol {scalar_t__ st_info; scalar_t__ st_other; int st_name; } ;
struct elf_symbuf_head {int count; unsigned int st_shndx; struct elf_symbuf_symbol* ssym; } ;
struct TYPE_14__ {struct elf_symbol* isym; struct elf_symbuf_symbol* ssym; } ;
struct elf_symbol {int name; unsigned int st_shndx; scalar_t__ st_info; scalar_t__ st_other; TYPE_2__ u; int st_name; } ;
struct elf_backend_data {TYPE_1__* s; } ;
struct bfd_link_info {int reduce_memory_overheads; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_15__ {int name; int * owner; } ;
typedef TYPE_3__ asection ;
struct TYPE_16__ {int sh_size; int sh_link; } ;
struct TYPE_17__ {struct elf_symbuf_head* symbuf; TYPE_4__ symtab_hdr; } ;
struct TYPE_13__ {int sizeof_sym; } ;
typedef struct elf_symbol Elf_Internal_Sym ;
typedef TYPE_4__ Elf_Internal_Shdr ;


 scalar_t__ CONST_STRNEQ (int,char*) ;
 int FALSE ;
 int SHF_GROUP ;
 int TRUE ;
 int _bfd_elf_section_from_bfd_section (int *,TYPE_3__*) ;
 struct elf_symbol* bfd_elf_get_elf_syms (int *,TYPE_4__*,int,int ,int *,int *,int *) ;
 void* bfd_elf_string_from_elf_section (int *,int ,int ) ;
 scalar_t__ bfd_get_flavour (int *) ;
 struct elf_symbol* bfd_malloc (int) ;
 scalar_t__ bfd_target_elf_flavour ;
 struct elf_symbuf_head* elf_create_symbuf (int,struct elf_symbol*) ;
 int elf_group_name (TYPE_3__*) ;
 int elf_section_flags (TYPE_3__*) ;
 scalar_t__ elf_section_type (TYPE_3__*) ;
 int elf_sym_name_compare ;
 TYPE_5__* elf_tdata (int *) ;
 int free (struct elf_symbol*) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int qsort (struct elf_symbol*,int,int,int ) ;
 scalar_t__ strcmp (int,int) ;

bfd_boolean
bfd_elf_match_symbols_in_sections (asection *sec1, asection *sec2,
       struct bfd_link_info *info)
{
  bfd *bfd1, *bfd2;
  const struct elf_backend_data *bed1, *bed2;
  Elf_Internal_Shdr *hdr1, *hdr2;
  bfd_size_type symcount1, symcount2;
  Elf_Internal_Sym *isymbuf1, *isymbuf2;
  struct elf_symbuf_head *ssymbuf1, *ssymbuf2;
  Elf_Internal_Sym *isym, *isymend;
  struct elf_symbol *symtable1 = ((void*)0), *symtable2 = ((void*)0);
  bfd_size_type count1, count2, i;
  int shndx1, shndx2;
  bfd_boolean result;

  bfd1 = sec1->owner;
  bfd2 = sec2->owner;



  if (CONST_STRNEQ (sec1->name, ".gnu.linkonce")
      && CONST_STRNEQ (sec2->name, ".gnu.linkonce"))
    return strcmp (sec1->name + sizeof ".gnu.linkonce",
     sec2->name + sizeof ".gnu.linkonce") == 0;


  if (bfd_get_flavour (bfd1) != bfd_target_elf_flavour
      || bfd_get_flavour (bfd2) != bfd_target_elf_flavour)
    return FALSE;

  if (elf_section_type (sec1) != elf_section_type (sec2))
    return FALSE;

  if ((elf_section_flags (sec1) & SHF_GROUP) != 0
      && (elf_section_flags (sec2) & SHF_GROUP) != 0)
    {


      if (strcmp (elf_group_name (sec1), elf_group_name (sec2)) != 0)
 return FALSE;
    }

  shndx1 = _bfd_elf_section_from_bfd_section (bfd1, sec1);
  shndx2 = _bfd_elf_section_from_bfd_section (bfd2, sec2);
  if (shndx1 == -1 || shndx2 == -1)
    return FALSE;

  bed1 = get_elf_backend_data (bfd1);
  bed2 = get_elf_backend_data (bfd2);
  hdr1 = &elf_tdata (bfd1)->symtab_hdr;
  symcount1 = hdr1->sh_size / bed1->s->sizeof_sym;
  hdr2 = &elf_tdata (bfd2)->symtab_hdr;
  symcount2 = hdr2->sh_size / bed2->s->sizeof_sym;

  if (symcount1 == 0 || symcount2 == 0)
    return FALSE;

  result = FALSE;
  isymbuf1 = ((void*)0);
  isymbuf2 = ((void*)0);
  ssymbuf1 = elf_tdata (bfd1)->symbuf;
  ssymbuf2 = elf_tdata (bfd2)->symbuf;

  if (ssymbuf1 == ((void*)0))
    {
      isymbuf1 = bfd_elf_get_elf_syms (bfd1, hdr1, symcount1, 0,
           ((void*)0), ((void*)0), ((void*)0));
      if (isymbuf1 == ((void*)0))
 goto done;

      if (!info->reduce_memory_overheads)
 elf_tdata (bfd1)->symbuf = ssymbuf1
   = elf_create_symbuf (symcount1, isymbuf1);
    }

  if (ssymbuf1 == ((void*)0) || ssymbuf2 == ((void*)0))
    {
      isymbuf2 = bfd_elf_get_elf_syms (bfd2, hdr2, symcount2, 0,
           ((void*)0), ((void*)0), ((void*)0));
      if (isymbuf2 == ((void*)0))
 goto done;

      if (ssymbuf1 != ((void*)0) && !info->reduce_memory_overheads)
 elf_tdata (bfd2)->symbuf = ssymbuf2
   = elf_create_symbuf (symcount2, isymbuf2);
    }

  if (ssymbuf1 != ((void*)0) && ssymbuf2 != ((void*)0))
    {

      bfd_size_type lo, hi, mid;
      struct elf_symbol *symp;
      struct elf_symbuf_symbol *ssym, *ssymend;

      lo = 0;
      hi = ssymbuf1->count;
      ssymbuf1++;
      count1 = 0;
      while (lo < hi)
 {
   mid = (lo + hi) / 2;
   if ((unsigned int) shndx1 < ssymbuf1[mid].st_shndx)
     hi = mid;
   else if ((unsigned int) shndx1 > ssymbuf1[mid].st_shndx)
     lo = mid + 1;
   else
     {
       count1 = ssymbuf1[mid].count;
       ssymbuf1 += mid;
       break;
     }
 }

      lo = 0;
      hi = ssymbuf2->count;
      ssymbuf2++;
      count2 = 0;
      while (lo < hi)
 {
   mid = (lo + hi) / 2;
   if ((unsigned int) shndx2 < ssymbuf2[mid].st_shndx)
     hi = mid;
   else if ((unsigned int) shndx2 > ssymbuf2[mid].st_shndx)
     lo = mid + 1;
   else
     {
       count2 = ssymbuf2[mid].count;
       ssymbuf2 += mid;
       break;
     }
 }

      if (count1 == 0 || count2 == 0 || count1 != count2)
 goto done;

      symtable1 = bfd_malloc (count1 * sizeof (struct elf_symbol));
      symtable2 = bfd_malloc (count2 * sizeof (struct elf_symbol));
      if (symtable1 == ((void*)0) || symtable2 == ((void*)0))
 goto done;

      symp = symtable1;
      for (ssym = ssymbuf1->ssym, ssymend = ssym + count1;
    ssym < ssymend; ssym++, symp++)
 {
   symp->u.ssym = ssym;
   symp->name = bfd_elf_string_from_elf_section (bfd1,
       hdr1->sh_link,
       ssym->st_name);
 }

      symp = symtable2;
      for (ssym = ssymbuf2->ssym, ssymend = ssym + count2;
    ssym < ssymend; ssym++, symp++)
 {
   symp->u.ssym = ssym;
   symp->name = bfd_elf_string_from_elf_section (bfd2,
       hdr2->sh_link,
       ssym->st_name);
 }


      qsort (symtable1, count1, sizeof (struct elf_symbol),
      elf_sym_name_compare);
      qsort (symtable2, count1, sizeof (struct elf_symbol),
      elf_sym_name_compare);

      for (i = 0; i < count1; i++)

 if (symtable1 [i].u.ssym->st_info != symtable2 [i].u.ssym->st_info
     || symtable1 [i].u.ssym->st_other != symtable2 [i].u.ssym->st_other
     || strcmp (symtable1 [i].name, symtable2 [i].name) != 0)
   goto done;

      result = TRUE;
      goto done;
    }

  symtable1 = bfd_malloc (symcount1 * sizeof (struct elf_symbol));
  symtable2 = bfd_malloc (symcount2 * sizeof (struct elf_symbol));
  if (symtable1 == ((void*)0) || symtable2 == ((void*)0))
    goto done;


  count1 = 0;
  for (isym = isymbuf1, isymend = isym + symcount1; isym < isymend; isym++)
    if (isym->st_shndx == (unsigned int) shndx1)
      symtable1[count1++].u.isym = isym;

  count2 = 0;
  for (isym = isymbuf2, isymend = isym + symcount2; isym < isymend; isym++)
    if (isym->st_shndx == (unsigned int) shndx2)
      symtable2[count2++].u.isym = isym;

  if (count1 == 0 || count2 == 0 || count1 != count2)
    goto done;

  for (i = 0; i < count1; i++)
    symtable1[i].name
      = bfd_elf_string_from_elf_section (bfd1, hdr1->sh_link,
      symtable1[i].u.isym->st_name);

  for (i = 0; i < count2; i++)
    symtable2[i].name
      = bfd_elf_string_from_elf_section (bfd2, hdr2->sh_link,
      symtable2[i].u.isym->st_name);


  qsort (symtable1, count1, sizeof (struct elf_symbol),
  elf_sym_name_compare);
  qsort (symtable2, count1, sizeof (struct elf_symbol),
  elf_sym_name_compare);

  for (i = 0; i < count1; i++)

    if (symtable1 [i].u.isym->st_info != symtable2 [i].u.isym->st_info
 || symtable1 [i].u.isym->st_other != symtable2 [i].u.isym->st_other
 || strcmp (symtable1 [i].name, symtable2 [i].name) != 0)
      goto done;

  result = TRUE;

done:
  if (symtable1)
    free (symtable1);
  if (symtable2)
    free (symtable2);
  if (isymbuf1)
    free (isymbuf1);
  if (isymbuf2)
    free (isymbuf2);

  return result;
}
