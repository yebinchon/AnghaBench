
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct fn_field {int dummy; } ;


 struct fn_field* TYPE_FN_FIELDLIST1 (struct type*,int) ;
 int TYPE_FN_FIELD_PHYSNAME (struct fn_field*,int) ;
 int VAR_DOMAIN ;
 scalar_t__ destructor_name_p (char*,struct type*) ;
 int find_methods (struct type*,char*,struct symbol**) ;
 scalar_t__ get_destructor_fn_field (struct type*,int*,int*) ;
 struct symbol* lookup_symbol (int ,int *,int ,int*,struct symtab**) ;

__attribute__((used)) static int
collect_methods (char *copy, struct type *t,
   struct symbol **sym_arr)
{
  int i1 = 0;

  if (destructor_name_p (copy, t))
    {

      int m_index, f_index;

      if (get_destructor_fn_field (t, &m_index, &f_index))
 {
   struct fn_field *f = TYPE_FN_FIELDLIST1 (t, m_index);

   sym_arr[i1] =
     lookup_symbol (TYPE_FN_FIELD_PHYSNAME (f, f_index),
      ((void*)0), VAR_DOMAIN, (int *) ((void*)0),
      (struct symtab **) ((void*)0));
   if (sym_arr[i1])
     i1++;
 }
    }
  else
    i1 = find_methods (t, copy, sym_arr);

  return i1;
}
