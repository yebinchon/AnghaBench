
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct dict_iterator {int dummy; } ;
struct TYPE_2__ {struct symbol* (* iterator_next ) (struct dict_iterator*) ;} ;


 int DICT_ITERATOR_DICT (struct dict_iterator*) ;
 TYPE_1__* DICT_VECTOR (int ) ;
 struct symbol* stub1 (struct dict_iterator*) ;

struct symbol *
dict_iterator_next (struct dict_iterator *iterator)
{
  return (DICT_VECTOR (DICT_ITERATOR_DICT (iterator)))
    ->iterator_next (iterator);
}
