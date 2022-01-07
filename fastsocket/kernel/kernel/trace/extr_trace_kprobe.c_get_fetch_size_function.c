
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetch_type {int ** fetch; } ;
typedef int * fetch_func_t ;


 int FETCH_MTD_END ;
 size_t FETCH_TYPE_STRING ;
 size_t FETCH_TYPE_STRSIZE ;
 int WARN_ON (int) ;
 struct fetch_type const* fetch_type_table ;

__attribute__((used)) static fetch_func_t get_fetch_size_function(const struct fetch_type *type,
         fetch_func_t orig_fn)
{
 int i;

 if (type != &fetch_type_table[FETCH_TYPE_STRING])
  return ((void*)0);
 for (i = 0; i < FETCH_MTD_END; i++)
  if (type->fetch[i] == orig_fn)
   return fetch_type_table[FETCH_TYPE_STRSIZE].fetch[i];

 WARN_ON(1);
 return ((void*)0);
}
