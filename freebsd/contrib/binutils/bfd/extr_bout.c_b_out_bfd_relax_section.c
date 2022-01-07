
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_15__ {unsigned int size; int * owner; } ;
typedef TYPE_2__ asection ;
struct TYPE_16__ {TYPE_1__* howto; } ;
typedef TYPE_3__ arelent ;
struct TYPE_14__ {int type; } ;





 int FALSE ;
 int TRUE ;
 int _bfd_generic_link_get_symbols (int *) ;
 unsigned int abs32code (int *,TYPE_2__*,TYPE_3__*,unsigned int,struct bfd_link_info*) ;
 unsigned int aligncode (int *,TYPE_2__*,TYPE_3__*,unsigned int) ;
 long bfd_canonicalize_reloc (int *,TYPE_2__*,TYPE_3__**,int ) ;
 long bfd_get_reloc_upper_bound (int *,TYPE_2__*) ;
 TYPE_3__** bfd_malloc (int ) ;
 int free (TYPE_3__**) ;

__attribute__((used)) static bfd_boolean
b_out_bfd_relax_section (bfd *abfd,
    asection *i,
    struct bfd_link_info *link_info,
    bfd_boolean *again)
{

  bfd *input_bfd = i->owner;
  asection *input_section = i;
  unsigned int shrink = 0 ;
  arelent **reloc_vector = ((void*)0);
  long reloc_size = bfd_get_reloc_upper_bound (input_bfd, input_section);

  if (reloc_size < 0)
    return FALSE;



  *again = FALSE;

  if (reloc_size)
    {
      long reloc_count;

      reloc_vector = bfd_malloc ((bfd_size_type) reloc_size);
      if (reloc_vector == ((void*)0) && reloc_size != 0)
 goto error_return;


      reloc_count =
 bfd_canonicalize_reloc (input_bfd, input_section, reloc_vector,
    _bfd_generic_link_get_symbols (input_bfd));
      if (reloc_count < 0)
 goto error_return;
      if (reloc_count > 0)
 {
   arelent **parent;

   for (parent = reloc_vector; *parent; parent++)
     {
       arelent *r = *parent;

       switch (r->howto->type)
  {
  case 128:

    shrink = aligncode (abfd, input_section, r, shrink);
    break;
  case 130:

    shrink = abs32code (input_bfd, input_section, r, shrink,
          link_info);
    break;
  case 129:
    shrink += 4;
    break;
  }
     }
 }
    }
  input_section->size -= shrink;

  if (reloc_vector != ((void*)0))
    free (reloc_vector);
  return TRUE;
 error_return:
  if (reloc_vector != ((void*)0))
    free (reloc_vector);
  return FALSE;
}
