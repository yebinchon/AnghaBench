
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ value; } ;
typedef TYPE_4__ symbol_info ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_12__ {TYPE_3__* native; } ;
struct TYPE_8__ {scalar_t__ n_value; } ;
struct TYPE_9__ {TYPE_1__ syment; } ;
struct TYPE_10__ {TYPE_2__ u; scalar_t__ fix_value; } ;


 int bfd_symbol_info (int *,TYPE_4__*) ;
 TYPE_5__* coffsymbol (int *) ;
 scalar_t__ obj_raw_syments (int *) ;

void
coff_get_symbol_info (bfd *abfd, asymbol *symbol, symbol_info *ret)
{
  bfd_symbol_info (symbol, ret);

  if (coffsymbol (symbol)->native != ((void*)0)
      && coffsymbol (symbol)->native->fix_value)
    ret->value = coffsymbol (symbol)->native->u.syment.n_value -
      (unsigned long) obj_raw_syments (abfd);
}
