
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct internal_syment {scalar_t__ n_value; } ;
struct TYPE_7__ {TYPE_2__* native; } ;
typedef TYPE_3__ coff_symbol_type ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_5__ {struct internal_syment syment; } ;
struct TYPE_6__ {scalar_t__ fix_value; TYPE_1__ u; } ;


 int FALSE ;
 int TRUE ;
 int bfd_error_invalid_operation ;
 int bfd_set_error (int ) ;
 TYPE_3__* coff_symbol_from (int *,int *) ;
 scalar_t__ obj_raw_syments (int *) ;

bfd_boolean
bfd_coff_get_syment (bfd *abfd,
       asymbol *symbol,
       struct internal_syment *psyment)
{
  coff_symbol_type *csym;

  csym = coff_symbol_from (abfd, symbol);
  if (csym == ((void*)0) || csym->native == ((void*)0))
    {
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }

  *psyment = csym->native->u.syment;

  if (csym->native->fix_value)
    psyment->n_value = psyment->n_value -
      (unsigned long) obj_raw_syments (abfd);



  return TRUE;
}
