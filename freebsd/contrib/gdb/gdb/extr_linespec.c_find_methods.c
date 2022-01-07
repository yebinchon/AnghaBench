
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 int DMGL_ANSI ;
 int STRUCT_DOMAIN ;
 struct type* TYPE_BASECLASS (struct type*,int) ;
 char* TYPE_FN_FIELDLIST_NAME (struct type*,int) ;
 int TYPE_NFN_FIELDS (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 scalar_t__ add_constructors (int,struct type*,struct symbol**) ;
 scalar_t__ add_matching_methods (int,struct type*,struct symbol**) ;
 scalar_t__ cplus_demangle_opname (char*,char*,int ) ;
 scalar_t__ lookup_symbol (char*,struct block*,int ,int*,struct symtab**) ;
 scalar_t__ strcmp_iw (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* type_name_no_tag (struct type*) ;

__attribute__((used)) static int
find_methods (struct type *t, char *name, struct symbol **sym_arr)
{
  int i1 = 0;
  int ibase;
  char *class_name = type_name_no_tag (t);




  if (class_name
      && (lookup_symbol (class_name, (struct block *) ((void*)0),
    STRUCT_DOMAIN, (int *) ((void*)0),
    (struct symtab **) ((void*)0))))
    {
      int method_counter;
      int name_len = strlen (name);

      CHECK_TYPEDEF (t);





      for (method_counter = TYPE_NFN_FIELDS (t) - 1;
    method_counter >= 0;
    --method_counter)
 {
   char *method_name = TYPE_FN_FIELDLIST_NAME (t, method_counter);
   char dem_opname[64];

   if (strncmp (method_name, "__", 2) == 0 ||
       strncmp (method_name, "op", 2) == 0 ||
       strncmp (method_name, "type", 4) == 0)
     {
       if (cplus_demangle_opname (method_name, dem_opname, DMGL_ANSI))
  method_name = dem_opname;
       else if (cplus_demangle_opname (method_name, dem_opname, 0))
  method_name = dem_opname;
     }

   if (strcmp_iw (name, method_name) == 0)

     i1 += add_matching_methods (method_counter, t,
     sym_arr + i1);
   else if (strncmp (class_name, name, name_len) == 0
     && (class_name[name_len] == '\0'
         || class_name[name_len] == '<'))
     i1 += add_constructors (method_counter, t,
        sym_arr + i1);
 }
    }
  if (i1 == 0)
    for (ibase = 0; ibase < TYPE_N_BASECLASSES (t); ibase++)
      i1 += find_methods (TYPE_BASECLASS (t, ibase), name, sym_arr + i1);

  return i1;
}
