
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct dictionary {int dummy; } ;
struct TYPE_2__ {int (* add_symbol ) (struct dictionary*,struct symbol*) ;} ;


 TYPE_1__* DICT_VECTOR (struct dictionary*) ;
 int stub1 (struct dictionary*,struct symbol*) ;

void
dict_add_symbol (struct dictionary *dict, struct symbol *sym)
{
  (DICT_VECTOR (dict))->add_symbol (dict, sym);
}
