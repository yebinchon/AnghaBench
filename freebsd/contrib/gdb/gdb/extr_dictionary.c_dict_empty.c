
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary {int dummy; } ;
struct dict_iterator {int dummy; } ;


 int * dict_iterator_first (struct dictionary*,struct dict_iterator*) ;

int
dict_empty (struct dictionary *dict)
{
  struct dict_iterator iter;

  return (dict_iterator_first (dict, &iter) == ((void*)0));
}
