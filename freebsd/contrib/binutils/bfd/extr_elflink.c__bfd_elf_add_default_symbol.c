
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {struct bfd_link_hash_entry* link; } ;
struct TYPE_12__ {TYPE_1__ i; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {int ref_dynamic; scalar_t__ ref_regular; struct bfd_link_hash_entry root; scalar_t__ def_regular; scalar_t__ def_dynamic; } ;
struct elf_backend_data {int collect; int (* elf_backend_copy_indirect_symbol ) (struct bfd_link_info*,struct elf_link_hash_entry*,struct elf_link_hash_entry*) ;} ;
struct bfd_link_info {scalar_t__ shared; TYPE_3__* hash; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_14__ {int flags; } ;
typedef TYPE_4__ bfd ;
typedef int asection ;
struct TYPE_13__ {int table; } ;
typedef int Elf_Internal_Sym ;


 int BFD_ASSERT (int ) ;
 int BSF_INDIRECT ;
 int DYNAMIC ;
 char ELF_VER_CHR ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_elf_merge_symbol (TYPE_4__*,struct bfd_link_info*,char*,int *,int **,int *,int *,struct elf_link_hash_entry**,int*,int*,int*,int*) ;
 int _bfd_error_handler (int ,TYPE_4__*,char*) ;
 int _bfd_generic_link_add_one_symbol (struct bfd_link_info*,TYPE_4__*,char*,int ,int ,int ,char const*,int,int,struct bfd_link_hash_entry**) ;
 int bfd_elf_link_record_dynamic_symbol (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 char* bfd_hash_allocate (int *,size_t) ;
 int bfd_ind_section_ptr ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 int elf_hash_table (struct bfd_link_info*) ;
 struct elf_link_hash_entry* elf_link_hash_lookup (int ,char const*,int,int,int) ;
 struct elf_backend_data* get_elf_backend_data (TYPE_4__*) ;
 int memcpy (char*,char const*,size_t) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int stub1 (struct bfd_link_info*,struct elf_link_hash_entry*,struct elf_link_hash_entry*) ;
 int stub2 (int ,TYPE_4__*,char*) ;
 int stub3 (struct bfd_link_info*,struct elf_link_hash_entry*,struct elf_link_hash_entry*) ;

bfd_boolean
_bfd_elf_add_default_symbol (bfd *abfd,
        struct bfd_link_info *info,
        struct elf_link_hash_entry *h,
        const char *name,
        Elf_Internal_Sym *sym,
        asection **psec,
        bfd_vma *value,
        bfd_boolean *dynsym,
        bfd_boolean override)
{
  bfd_boolean type_change_ok;
  bfd_boolean size_change_ok;
  bfd_boolean skip;
  char *shortname;
  struct elf_link_hash_entry *hi;
  struct bfd_link_hash_entry *bh;
  const struct elf_backend_data *bed;
  bfd_boolean collect;
  bfd_boolean dynamic;
  char *p;
  size_t len, shortlen;
  asection *sec;





  p = strchr (name, ELF_VER_CHR);
  if (p == ((void*)0) || p[1] != ELF_VER_CHR)
    return TRUE;

  if (override)
    {


      hi = elf_link_hash_lookup (elf_hash_table (info), name, TRUE,
     FALSE, FALSE);
      BFD_ASSERT (hi != ((void*)0));
      if (hi == h)
 return TRUE;
      while (hi->root.type == bfd_link_hash_indirect
      || hi->root.type == bfd_link_hash_warning)
 {
   hi = (struct elf_link_hash_entry *) hi->root.u.i.link;
   if (hi == h)
     return TRUE;
 }
    }

  bed = get_elf_backend_data (abfd);
  collect = bed->collect;
  dynamic = (abfd->flags & DYNAMIC) != 0;

  shortlen = p - name;
  shortname = bfd_hash_allocate (&info->hash->table, shortlen + 1);
  if (shortname == ((void*)0))
    return FALSE;
  memcpy (shortname, name, shortlen);
  shortname[shortlen] = '\0';





  type_change_ok = FALSE;
  size_change_ok = FALSE;
  sec = *psec;
  if (!_bfd_elf_merge_symbol (abfd, info, shortname, sym, &sec, value,
         ((void*)0), &hi, &skip, &override,
         &type_change_ok, &size_change_ok))
    return FALSE;

  if (skip)
    goto nondefault;

  if (! override)
    {
      bh = &hi->root;
      if (! (_bfd_generic_link_add_one_symbol
      (info, abfd, shortname, BSF_INDIRECT, bfd_ind_section_ptr,
       0, name, FALSE, collect, &bh)))
 return FALSE;
      hi = (struct elf_link_hash_entry *) bh;
    }
  else
    {
      while (hi->root.type == bfd_link_hash_indirect
      || hi->root.type == bfd_link_hash_warning)
 hi = (struct elf_link_hash_entry *) hi->root.u.i.link;

      h->root.type = bfd_link_hash_indirect;
      h->root.u.i.link = (struct bfd_link_hash_entry *) hi;
      if (h->def_dynamic)
 {
   h->def_dynamic = 0;
   hi->ref_dynamic = 1;
   if (hi->ref_regular
       || hi->def_regular)
     {
       if (! bfd_elf_link_record_dynamic_symbol (info, hi))
  return FALSE;
     }
 }



      hi = h;
    }


  if (hi->root.type == bfd_link_hash_warning)
    hi = (struct elf_link_hash_entry *) hi->root.u.i.link;





  if (hi->root.type == bfd_link_hash_indirect)
    {
      struct elf_link_hash_entry *ht;

      ht = (struct elf_link_hash_entry *) hi->root.u.i.link;
      (*bed->elf_backend_copy_indirect_symbol) (info, ht, hi);



      if (! *dynsym)
 {
   if (! dynamic)
     {
       if (info->shared
    || hi->ref_dynamic)
  *dynsym = TRUE;
     }
   else
     {
       if (hi->ref_regular)
  *dynsym = TRUE;
     }
 }
    }




nondefault:
  len = strlen (name);
  shortname = bfd_hash_allocate (&info->hash->table, len);
  if (shortname == ((void*)0))
    return FALSE;
  memcpy (shortname, name, shortlen);
  memcpy (shortname + shortlen, p + 1, len - shortlen);


  type_change_ok = FALSE;
  size_change_ok = FALSE;
  sec = *psec;
  if (!_bfd_elf_merge_symbol (abfd, info, shortname, sym, &sec, value,
         ((void*)0), &hi, &skip, &override,
         &type_change_ok, &size_change_ok))
    return FALSE;

  if (skip)
    return TRUE;

  if (override)
    {



      if (hi->root.type != bfd_link_hash_defined
   && hi->root.type != bfd_link_hash_defweak)
 (*_bfd_error_handler)
   (_("%B: unexpected redefinition of indirect versioned symbol `%s'"),
    abfd, shortname);
    }
  else
    {
      bh = &hi->root;
      if (! (_bfd_generic_link_add_one_symbol
      (info, abfd, shortname, BSF_INDIRECT,
       bfd_ind_section_ptr, 0, name, FALSE, collect, &bh)))
 return FALSE;
      hi = (struct elf_link_hash_entry *) bh;





      if (hi->root.type == bfd_link_hash_indirect)
 {
   (*bed->elf_backend_copy_indirect_symbol) (info, h, hi);



   if (! *dynsym)
     {
       if (! dynamic)
  {
    if (info->shared
        || hi->ref_dynamic)
      *dynsym = TRUE;
  }
       else
  {
    if (hi->ref_regular)
      *dynsym = TRUE;
  }
     }
 }
    }

  return TRUE;
}
