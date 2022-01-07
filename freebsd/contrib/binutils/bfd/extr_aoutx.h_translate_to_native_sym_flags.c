
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct external_nlist {int* e_type; int e_value; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_16__ {int flags; int * name; scalar_t__ value; } ;
typedef TYPE_1__ asymbol ;
struct TYPE_17__ {scalar_t__ vma; struct TYPE_17__* output_section; scalar_t__ output_offset; } ;
typedef TYPE_2__ asection ;
struct TYPE_18__ {int type; } ;
typedef TYPE_3__ aout_symbol_type ;


 int BSF_CONSTRUCTOR ;
 int BSF_DEBUGGING ;
 int BSF_GLOBAL ;
 int BSF_LOCAL ;
 int BSF_WARNING ;
 int BSF_WEAK ;
 int FALSE ;



 int N_EXT ;
 int N_INDR ;
 int N_SETA ;
 int N_SETB ;
 int N_SETD ;
 int N_SETT ;

 int N_TYPE ;

 int N_WARNING ;
 int N_WEAKA ;
 int N_WEAKB ;
 int N_WEAKD ;
 int N_WEAKT ;
 int N_WEAKU ;
 int PUT_WORD (int *,scalar_t__,int ) ;
 int TRUE ;
 int * _ (char*) ;
 int _bfd_error_handler (int *,int ,int *) ;
 scalar_t__ aout_section_merge_with_text_p (int *,TYPE_2__*) ;
 int bfd_error_nonrepresentable_section ;
 int bfd_get_filename (int *) ;
 TYPE_2__* bfd_get_section (TYPE_1__*) ;
 int * bfd_get_section_name (int *,TYPE_2__*) ;
 scalar_t__ bfd_is_abs_section (TYPE_2__*) ;
 scalar_t__ bfd_is_com_section (TYPE_2__*) ;
 scalar_t__ bfd_is_ind_section (TYPE_2__*) ;
 scalar_t__ bfd_is_und_section (TYPE_2__*) ;
 int bfd_set_error (int ) ;
 TYPE_2__* obj_bsssec (int *) ;
 TYPE_2__* obj_datasec (int *) ;
 TYPE_2__* obj_textsec (int *) ;
 int stub1 (int *,int ,int *) ;
 int stub2 (int *,int ,int *) ;

__attribute__((used)) static bfd_boolean
translate_to_native_sym_flags (bfd *abfd,
          asymbol *cache_ptr,
          struct external_nlist *sym_pointer)
{
  bfd_vma value = cache_ptr->value;
  asection *sec;
  bfd_vma off;



  sym_pointer->e_type[0] &= ~N_TYPE;

  sec = bfd_get_section (cache_ptr);
  off = 0;

  if (sec == ((void*)0))
    {


      (*_bfd_error_handler)
 (_("%s: can not represent section for symbol `%s' in a.out object file format"),
  bfd_get_filename (abfd),
  cache_ptr->name != ((void*)0) ? cache_ptr->name : _("*unknown*"));
      bfd_set_error (bfd_error_nonrepresentable_section);
      return FALSE;
    }

  if (sec->output_section != ((void*)0))
    {
      off = sec->output_offset;
      sec = sec->output_section;
    }

  if (bfd_is_abs_section (sec))
    sym_pointer->e_type[0] |= 132;
  else if (sec == obj_textsec (abfd))
    sym_pointer->e_type[0] |= 129;
  else if (sec == obj_datasec (abfd))
    sym_pointer->e_type[0] |= 130;
  else if (sec == obj_bsssec (abfd))
    sym_pointer->e_type[0] |= 131;
  else if (bfd_is_und_section (sec))
    sym_pointer->e_type[0] = 128 | N_EXT;
  else if (bfd_is_ind_section (sec))
    sym_pointer->e_type[0] = N_INDR;
  else if (bfd_is_com_section (sec))
    sym_pointer->e_type[0] = 128 | N_EXT;
  else
    {
      if (aout_section_merge_with_text_p (abfd, sec))
 sym_pointer->e_type[0] |= 129;
      else
 {
          (*_bfd_error_handler)
    (_("%s: can not represent section `%s' in a.out object file format"),
      bfd_get_filename (abfd), bfd_get_section_name (abfd, sec));
          bfd_set_error (bfd_error_nonrepresentable_section);
          return FALSE;
 }
    }


  value += sec->vma + off;

  if ((cache_ptr->flags & BSF_WARNING) != 0)
    sym_pointer->e_type[0] = N_WARNING;

  if ((cache_ptr->flags & BSF_DEBUGGING) != 0)
    sym_pointer->e_type[0] = ((aout_symbol_type *) cache_ptr)->type;
  else if ((cache_ptr->flags & BSF_GLOBAL) != 0)
    sym_pointer->e_type[0] |= N_EXT;
  else if ((cache_ptr->flags & BSF_LOCAL) != 0)
    sym_pointer->e_type[0] &= ~N_EXT;

  if ((cache_ptr->flags & BSF_CONSTRUCTOR) != 0)
    {
      int type = ((aout_symbol_type *) cache_ptr)->type;

      switch (type)
 {
 case 132: type = N_SETA; break;
 case 129: type = N_SETT; break;
 case 130: type = N_SETD; break;
 case 131: type = N_SETB; break;
 }
      sym_pointer->e_type[0] = type;
    }

  if ((cache_ptr->flags & BSF_WEAK) != 0)
    {
      int type;

      switch (sym_pointer->e_type[0] & N_TYPE)
 {
 default:
 case 132: type = N_WEAKA; break;
 case 129: type = N_WEAKT; break;
 case 130: type = N_WEAKD; break;
 case 131: type = N_WEAKB; break;
 case 128: type = N_WEAKU; break;
 }
      sym_pointer->e_type[0] = type;
    }

  PUT_WORD (abfd, value, sym_pointer->e_value);

  return TRUE;
}
