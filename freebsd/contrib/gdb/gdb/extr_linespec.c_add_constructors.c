
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct fn_field {int dummy; } ;


 struct fn_field* TYPE_FN_FIELDLIST1 (struct type*,int) ;
 int TYPE_FN_FIELDLIST_LENGTH (struct type*,int) ;
 char* TYPE_FN_FIELD_PHYSNAME (struct fn_field*,int) ;
 scalar_t__ TYPE_FN_FIELD_STUB (struct fn_field*,int) ;
 int VAR_DOMAIN ;
 int is_constructor_name (char*) ;
 struct symbol* lookup_symbol (char*,int *,int ,int*,struct symtab**) ;

__attribute__((used)) static int
add_constructors (int method_counter, struct type *t,
    struct symbol **sym_arr)
{
  int field_counter;
  int i1 = 0;





  for (field_counter
  = TYPE_FN_FIELDLIST_LENGTH (t, method_counter) - 1;
       field_counter >= 0;
       --field_counter)
    {
      struct fn_field *f;
      char *phys_name;

      f = TYPE_FN_FIELDLIST1 (t, method_counter);



      if (TYPE_FN_FIELD_STUB (f, field_counter))
 continue;
      phys_name = TYPE_FN_FIELD_PHYSNAME (f, field_counter);
      if (! is_constructor_name (phys_name))
 continue;



      sym_arr[i1] = lookup_symbol (phys_name,
       ((void*)0), VAR_DOMAIN,
       (int *) ((void*)0),
       (struct symtab **) ((void*)0));
      if (sym_arr[i1])
 i1++;
    }

  return i1;
}
