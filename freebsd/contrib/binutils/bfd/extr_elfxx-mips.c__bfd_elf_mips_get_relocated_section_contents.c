
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_11__ ;
typedef struct TYPE_35__ TYPE_10__ ;


struct TYPE_37__ {TYPE_10__* section; } ;
struct TYPE_38__ {TYPE_1__ indirect; } ;
struct bfd_link_order {TYPE_2__ u; } ;
struct bfd_link_info {TYPE_7__* callbacks; TYPE_3__* hash; } ;
struct TYPE_41__ {struct bfd_link_hash_entry* link; } ;
struct TYPE_40__ {int value; } ;
struct TYPE_42__ {TYPE_5__ i; TYPE_4__ def; } ;
struct bfd_link_hash_entry {int type; TYPE_6__ u; } ;
struct bfd_hash_entry {int dummy; } ;
typedef int bfd_vma ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_45__ {scalar_t__ xvec; } ;
typedef TYPE_9__ bfd ;
typedef int asymbol ;
struct TYPE_35__ {size_t reloc_count; TYPE_11__** orelocation; struct TYPE_35__* output_section; scalar_t__ size; scalar_t__ rawsize; TYPE_9__* owner; } ;
typedef TYPE_10__ asection ;
struct TYPE_36__ {int address; int addend; TYPE_8__* howto; int ** sym_ptr_ptr; } ;
typedef TYPE_11__ arelent ;
struct TYPE_44__ {scalar_t__ special_function; int name; } ;
struct TYPE_43__ {int (* reloc_overflow ) (struct bfd_link_info*,int *,int ,int ,int ,TYPE_9__*,TYPE_10__*,int ) ;int (* reloc_dangerous ) (struct bfd_link_info*,char*,TYPE_9__*,TYPE_10__*,int ) ;int (* undefined_symbol ) (struct bfd_link_info*,int ,TYPE_9__*,TYPE_10__*,int ,int ) ;} ;
struct TYPE_39__ {int table; } ;


 int BFD_ASSERT (int ) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ _bfd_mips_elf32_gprel16_reloc ;
 int _bfd_mips_elf_gprel16_with_gp (TYPE_9__*,int *,TYPE_11__*,TYPE_10__*,int ,int *,int) ;
 int abort () ;
 int bfd_asymbol_name (int *) ;
 long bfd_canonicalize_reloc (TYPE_9__*,TYPE_10__*,TYPE_11__**,int **) ;
 long bfd_get_reloc_upper_bound (TYPE_9__*,TYPE_10__*) ;
 int bfd_get_section_contents (TYPE_9__*,TYPE_10__*,int *,int ,scalar_t__) ;
 struct bfd_hash_entry* bfd_hash_lookup (int *,char*,int ,int ) ;
 TYPE_11__** bfd_malloc (long) ;
 int bfd_perform_relocation (TYPE_9__*,TYPE_11__*,int *,TYPE_10__*,TYPE_9__*,char**) ;

 int bfd_reloc_ok ;



 int free (TYPE_11__**) ;
 int stub1 (struct bfd_link_info*,int ,TYPE_9__*,TYPE_10__*,int ,int ) ;
 int stub2 (struct bfd_link_info*,char*,TYPE_9__*,TYPE_10__*,int ) ;
 int stub3 (struct bfd_link_info*,int *,int ,int ,int ,TYPE_9__*,TYPE_10__*,int ) ;

bfd_byte *
_bfd_elf_mips_get_relocated_section_contents
  (bfd *abfd,
   struct bfd_link_info *link_info,
   struct bfd_link_order *link_order,
   bfd_byte *data,
   bfd_boolean relocatable,
   asymbol **symbols)
{

  bfd *input_bfd = link_order->u.indirect.section->owner;
  asection *input_section = link_order->u.indirect.section;
  bfd_size_type sz;

  long reloc_size = bfd_get_reloc_upper_bound (input_bfd, input_section);
  arelent **reloc_vector = ((void*)0);
  long reloc_count;

  if (reloc_size < 0)
    goto error_return;

  reloc_vector = bfd_malloc (reloc_size);
  if (reloc_vector == ((void*)0) && reloc_size != 0)
    goto error_return;


  sz = input_section->rawsize ? input_section->rawsize : input_section->size;
  if (!bfd_get_section_contents (input_bfd, input_section, data, 0, sz))
    goto error_return;

  reloc_count = bfd_canonicalize_reloc (input_bfd,
     input_section,
     reloc_vector,
     symbols);
  if (reloc_count < 0)
    goto error_return;

  if (reloc_count > 0)
    {
      arelent **parent;

      int gp_found;
      bfd_vma gp = 0x12345678;

      {
 struct bfd_hash_entry *h;
 struct bfd_link_hash_entry *lh;

 if (abfd && input_bfd
     && abfd->xvec == input_bfd->xvec)
   lh = 0;
 else
   {
     h = bfd_hash_lookup (&link_info->hash->table, "_gp", FALSE, FALSE);
     lh = (struct bfd_link_hash_entry *) h;
   }
      lookup:
 if (lh)
   {
     switch (lh->type)
       {
       case 134:
       case 133:
       case 139:
  gp_found = 0;
  break;
       case 138:
       case 137:
  gp_found = 1;
  gp = lh->u.def.value;
  break;
       case 136:
       case 132:
  lh = lh->u.i.link;

  goto lookup;
       case 135:
       default:
  abort ();
       }
   }
 else
   gp_found = 0;
      }

      for (parent = reloc_vector; *parent != ((void*)0); parent++)
 {
   char *error_message = ((void*)0);
   bfd_reloc_status_type r;



   asymbol *sym = *(*parent)->sym_ptr_ptr;




   if (gp_found
       && (*parent)->howto->special_function
       == _bfd_mips_elf32_gprel16_reloc)
     r = _bfd_mips_elf_gprel16_with_gp (input_bfd, sym, *parent,
            input_section, relocatable,
            data, gp);
   else
     r = bfd_perform_relocation (input_bfd, *parent, data,
     input_section,
     relocatable ? abfd : ((void*)0),
     &error_message);

   if (relocatable)
     {
       asection *os = input_section->output_section;


       os->orelocation[os->reloc_count] = *parent;
       os->reloc_count++;
     }

   if (r != bfd_reloc_ok)
     {
       switch (r)
  {
  case 128:
    if (!((*link_info->callbacks->undefined_symbol)
   (link_info, bfd_asymbol_name (*(*parent)->sym_ptr_ptr),
    input_bfd, input_section, (*parent)->address, TRUE)))
      goto error_return;
    break;
  case 131:
    BFD_ASSERT (error_message != ((void*)0));
    if (!((*link_info->callbacks->reloc_dangerous)
   (link_info, error_message, input_bfd, input_section,
    (*parent)->address)))
      goto error_return;
    break;
  case 129:
    if (!((*link_info->callbacks->reloc_overflow)
   (link_info, ((void*)0),
    bfd_asymbol_name (*(*parent)->sym_ptr_ptr),
    (*parent)->howto->name, (*parent)->addend,
    input_bfd, input_section, (*parent)->address)))
      goto error_return;
    break;
  case 130:
  default:
    abort ();
    break;
  }

     }
 }
    }
  if (reloc_vector != ((void*)0))
    free (reloc_vector);
  return data;

error_return:
  if (reloc_vector != ((void*)0))
    free (reloc_vector);
  return ((void*)0);
}
