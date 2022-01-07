
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfd_link_hash_table {int dummy; } ;
struct xcoff_link_hash_table {struct bfd_link_hash_table root; int * special_sections; void* gc; void* textro; scalar_t__ file_align; int * imports; int * descriptor_section; int * toc_section; int * linkage_section; int ldhdr; scalar_t__ ldrel_count; int * loader_section; int * debug_section; int debug_strtab; } ;
struct xcoff_link_hash_entry {int dummy; } ;
struct internal_ldhdr {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd ;
struct TYPE_2__ {int full_aouthdr; } ;


 void* FALSE ;
 int TRUE ;
 int _bfd_link_hash_table_init (struct bfd_link_hash_table*,int *,int ,int) ;
 int _bfd_xcoff_stringtab_init () ;
 struct xcoff_link_hash_table* bfd_malloc (int) ;
 int free (struct xcoff_link_hash_table*) ;
 int memset (int *,int ,int) ;
 TYPE_1__* xcoff_data (int *) ;
 int xcoff_link_hash_newfunc ;

struct bfd_link_hash_table *
_bfd_xcoff_bfd_link_hash_table_create (bfd *abfd)
{
  struct xcoff_link_hash_table *ret;
  bfd_size_type amt = sizeof (* ret);

  ret = bfd_malloc (amt);
  if (ret == ((void*)0))
    return ((void*)0);
  if (!_bfd_link_hash_table_init (&ret->root, abfd, xcoff_link_hash_newfunc,
      sizeof (struct xcoff_link_hash_entry)))
    {
      free (ret);
      return ((void*)0);
    }

  ret->debug_strtab = _bfd_xcoff_stringtab_init ();
  ret->debug_section = ((void*)0);
  ret->loader_section = ((void*)0);
  ret->ldrel_count = 0;
  memset (&ret->ldhdr, 0, sizeof (struct internal_ldhdr));
  ret->linkage_section = ((void*)0);
  ret->toc_section = ((void*)0);
  ret->descriptor_section = ((void*)0);
  ret->imports = ((void*)0);
  ret->file_align = 0;
  ret->textro = FALSE;
  ret->gc = FALSE;
  memset (ret->special_sections, 0, sizeof ret->special_sections);




  xcoff_data (abfd)->full_aouthdr = TRUE;

  return &ret->root;
}
