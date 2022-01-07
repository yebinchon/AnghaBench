
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct elf_link_hash_table {int dynobj; } ;
struct elf_backend_data {TYPE_2__* s; } ;
struct bfd_link_info {int dummy; } ;
typedef void* bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_9__ {int size; int * contents; } ;
typedef TYPE_3__ asection ;
struct TYPE_7__ {void* d_val; } ;
struct TYPE_10__ {TYPE_1__ d_un; void* d_tag; } ;
struct TYPE_8__ {int sizeof_dyn; int (* swap_dyn_out ) (int ,TYPE_4__*,int *) ;} ;
typedef TYPE_4__ Elf_Internal_Dyn ;


 int BFD_ASSERT (int ) ;
 int FALSE ;
 int TRUE ;
 TYPE_3__* bfd_get_section_by_name (int ,char*) ;
 int * bfd_realloc (int *,int) ;
 struct elf_link_hash_table* elf_hash_table (struct bfd_link_info*) ;
 struct elf_backend_data* get_elf_backend_data (int ) ;
 int is_elf_hash_table (struct elf_link_hash_table*) ;
 int stub1 (int ,TYPE_4__*,int *) ;

bfd_boolean
_bfd_elf_add_dynamic_entry (struct bfd_link_info *info,
       bfd_vma tag,
       bfd_vma val)
{
  struct elf_link_hash_table *hash_table;
  const struct elf_backend_data *bed;
  asection *s;
  bfd_size_type newsize;
  bfd_byte *newcontents;
  Elf_Internal_Dyn dyn;

  hash_table = elf_hash_table (info);
  if (! is_elf_hash_table (hash_table))
    return FALSE;

  bed = get_elf_backend_data (hash_table->dynobj);
  s = bfd_get_section_by_name (hash_table->dynobj, ".dynamic");
  BFD_ASSERT (s != ((void*)0));

  newsize = s->size + bed->s->sizeof_dyn;
  newcontents = bfd_realloc (s->contents, newsize);
  if (newcontents == ((void*)0))
    return FALSE;

  dyn.d_tag = tag;
  dyn.d_un.d_val = val;
  bed->s->swap_dyn_out (hash_table->dynobj, &dyn, newcontents + s->size);

  s->size = newsize;
  s->contents = newcontents;

  return TRUE;
}
