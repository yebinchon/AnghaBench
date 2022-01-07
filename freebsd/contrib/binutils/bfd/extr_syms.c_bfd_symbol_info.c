
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int name; scalar_t__ value; int type; } ;
typedef TYPE_2__ symbol_info ;
struct TYPE_9__ {int name; TYPE_1__* section; scalar_t__ value; } ;
typedef TYPE_3__ asymbol ;
struct TYPE_7__ {scalar_t__ vma; } ;


 int bfd_decode_symclass (TYPE_3__*) ;
 scalar_t__ bfd_is_undefined_symclass (int ) ;

void
bfd_symbol_info (asymbol *symbol, symbol_info *ret)
{
  ret->type = bfd_decode_symclass (symbol);

  if (bfd_is_undefined_symclass (ret->type))
    ret->value = 0;
  else
    ret->value = symbol->value + symbol->section->vma;

  ret->name = symbol->name;
}
