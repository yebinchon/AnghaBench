
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_10__ ;


struct TYPE_40__ {scalar_t__ size; } ;
struct TYPE_39__ {TYPE_10__* section; scalar_t__ value; } ;
struct TYPE_38__ {scalar_t__ link; } ;
struct TYPE_41__ {TYPE_5__ c; TYPE_4__ def; TYPE_3__ i; } ;
struct TYPE_42__ {int type; TYPE_6__ u; } ;
struct generic_link_hash_entry {scalar_t__ written; TYPE_7__ root; TYPE_9__* sym; } ;
struct bfd_link_info {scalar_t__ strip; int discard; int relocatable; int keep_hash; TYPE_2__* hash; int * create_object_symbols_section; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_43__ {scalar_t__ xvec; int filename; TYPE_10__* sections; } ;
typedef TYPE_8__ bfd ;
struct TYPE_36__ {struct generic_link_hash_entry* p; } ;
struct TYPE_44__ {int flags; TYPE_10__* section; scalar_t__ value; TYPE_1__ udata; int name; } ;
typedef TYPE_9__ asymbol ;
struct TYPE_35__ {int flags; int * output_section; struct TYPE_35__* next; } ;
typedef TYPE_10__ asection ;
struct TYPE_37__ {scalar_t__ creator; } ;


 int BFD_ASSERT (scalar_t__) ;
 int BSF_CONSTRUCTOR ;
 int BSF_DEBUGGING ;
 int BSF_FILE ;
 int BSF_GLOBAL ;
 int BSF_INDIRECT ;
 int BSF_LOCAL ;
 int BSF_NOT_AT_END ;
 int BSF_WARNING ;
 int BSF_WEAK ;
 scalar_t__ FALSE ;
 int SEC_MERGE ;
 scalar_t__ TRUE ;
 int _bfd_generic_hash_table (struct bfd_link_info*) ;
 TYPE_9__** _bfd_generic_link_get_symbols (TYPE_8__*) ;
 int _bfd_generic_link_get_symcount (TYPE_8__*) ;
 struct generic_link_hash_entry* _bfd_generic_link_hash_lookup (int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int abort () ;
 TYPE_8__* bfd_asymbol_bfd (TYPE_9__*) ;
 int bfd_asymbol_name (TYPE_9__*) ;
 TYPE_10__* bfd_com_section_ptr ;
 TYPE_10__* bfd_get_section (TYPE_9__*) ;
 int * bfd_hash_lookup (int ,int ,scalar_t__,scalar_t__) ;
 int bfd_is_abs_section (TYPE_10__*) ;
 scalar_t__ bfd_is_com_section (TYPE_10__*) ;
 scalar_t__ bfd_is_ind_section (TYPE_10__*) ;
 int bfd_is_local_label (TYPE_8__*,TYPE_9__*) ;
 scalar_t__ bfd_is_und_section (TYPE_10__*) ;







 TYPE_9__* bfd_make_empty_symbol (TYPE_8__*) ;
 scalar_t__ bfd_section_removed_from_list (TYPE_8__*,int *) ;
 scalar_t__ bfd_wrapped_link_hash_lookup (TYPE_8__*,struct bfd_link_info*,int ,scalar_t__,scalar_t__,scalar_t__) ;




 int generic_add_output_symbol (TYPE_8__*,size_t*,TYPE_9__*) ;
 int generic_link_read_symbols (TYPE_8__*) ;
 scalar_t__ strip_all ;
 scalar_t__ strip_none ;
 scalar_t__ strip_some ;

bfd_boolean
_bfd_generic_link_output_symbols (bfd *output_bfd,
      bfd *input_bfd,
      struct bfd_link_info *info,
      size_t *psymalloc)
{
  asymbol **sym_ptr;
  asymbol **sym_end;

  if (! generic_link_read_symbols (input_bfd))
    return FALSE;


  if (info->create_object_symbols_section != ((void*)0))
    {
      asection *sec;

      for (sec = input_bfd->sections; sec != ((void*)0); sec = sec->next)
 {
   if (sec->output_section == info->create_object_symbols_section)
     {
       asymbol *newsym;

       newsym = bfd_make_empty_symbol (input_bfd);
       if (!newsym)
  return FALSE;
       newsym->name = input_bfd->filename;
       newsym->value = 0;
       newsym->flags = BSF_LOCAL | BSF_FILE;
       newsym->section = sec;

       if (! generic_add_output_symbol (output_bfd, psymalloc,
            newsym))
  return FALSE;

       break;
     }
 }
    }



  sym_ptr = _bfd_generic_link_get_symbols (input_bfd);
  sym_end = sym_ptr + _bfd_generic_link_get_symcount (input_bfd);
  for (; sym_ptr < sym_end; sym_ptr++)
    {
      asymbol *sym;
      struct generic_link_hash_entry *h;
      bfd_boolean output;

      h = ((void*)0);
      sym = *sym_ptr;
      if ((sym->flags & (BSF_INDIRECT
    | BSF_WARNING
    | BSF_GLOBAL
    | BSF_CONSTRUCTOR
    | BSF_WEAK)) != 0
   || bfd_is_und_section (bfd_get_section (sym))
   || bfd_is_com_section (bfd_get_section (sym))
   || bfd_is_ind_section (bfd_get_section (sym)))
 {
   if (sym->udata.p != ((void*)0))
     h = sym->udata.p;
   else if ((sym->flags & BSF_CONSTRUCTOR) != 0)
     {
       h = ((void*)0);
     }
   else if (bfd_is_und_section (bfd_get_section (sym)))
     h = ((struct generic_link_hash_entry *)
   bfd_wrapped_link_hash_lookup (output_bfd, info,
            bfd_asymbol_name (sym),
            FALSE, FALSE, TRUE));
   else
     h = _bfd_generic_link_hash_lookup (_bfd_generic_hash_table (info),
            bfd_asymbol_name (sym),
            FALSE, FALSE, TRUE);

   if (h != ((void*)0))
     {





       if (info->hash->creator == input_bfd->xvec)
  {
    if (h->sym != ((void*)0))
      *sym_ptr = sym = h->sym;
  }

       switch (h->root.type)
  {
  default:
  case 134:
    abort ();
  case 133:
    break;
  case 132:
    sym->flags |= BSF_WEAK;
    break;
  case 135:
    h = (struct generic_link_hash_entry *) h->root.u.i.link;

  case 137:
    sym->flags |= BSF_GLOBAL;
    sym->flags &=~ BSF_CONSTRUCTOR;
    sym->value = h->root.u.def.value;
    sym->section = h->root.u.def.section;
    break;
  case 136:
    sym->flags |= BSF_WEAK;
    sym->flags &=~ BSF_CONSTRUCTOR;
    sym->value = h->root.u.def.value;
    sym->section = h->root.u.def.section;
    break;
  case 138:
    sym->value = h->root.u.c.size;
    sym->flags |= BSF_GLOBAL;
    if (! bfd_is_com_section (sym->section))
      {
        BFD_ASSERT (bfd_is_und_section (sym->section));
        sym->section = bfd_com_section_ptr;
      }






    break;
  }
     }
 }



      if (info->strip == strip_all
   || (info->strip == strip_some
       && bfd_hash_lookup (info->keep_hash, bfd_asymbol_name (sym),
      FALSE, FALSE) == ((void*)0)))
 output = FALSE;
      else if ((sym->flags & (BSF_GLOBAL | BSF_WEAK)) != 0)
 {




   if (bfd_asymbol_bfd (sym) == input_bfd
       && (sym->flags & BSF_NOT_AT_END) != 0)
     output = TRUE;
   else
     output = FALSE;
 }
      else if (bfd_is_ind_section (sym->section))
 output = FALSE;
      else if ((sym->flags & BSF_DEBUGGING) != 0)
 {
   if (info->strip == strip_none)
     output = TRUE;
   else
     output = FALSE;
 }
      else if (bfd_is_und_section (sym->section)
        || bfd_is_com_section (sym->section))
 output = FALSE;
      else if ((sym->flags & BSF_LOCAL) != 0)
 {
   if ((sym->flags & BSF_WARNING) != 0)
     output = FALSE;
   else
     {
       switch (info->discard)
  {
  default:
  case 131:
    output = FALSE;
    break;
  case 128:
    output = TRUE;
    if (info->relocatable
        || ! (sym->section->flags & SEC_MERGE))
      break;

  case 130:
    if (bfd_is_local_label (input_bfd, sym))
      output = FALSE;
    else
      output = TRUE;
    break;
  case 129:
    output = TRUE;
    break;
  }
     }
 }
      else if ((sym->flags & BSF_CONSTRUCTOR))
 {
   if (info->strip != strip_all)
     output = TRUE;
   else
     output = FALSE;
 }
      else
 abort ();




      if (!bfd_is_abs_section (sym->section)
   && bfd_section_removed_from_list (output_bfd,
         sym->section->output_section))
 output = FALSE;

      if (output)
 {
   if (! generic_add_output_symbol (output_bfd, psymalloc, sym))
     return FALSE;
   if (h != ((void*)0))
     h->written = TRUE;
 }
    }

  return TRUE;
}
