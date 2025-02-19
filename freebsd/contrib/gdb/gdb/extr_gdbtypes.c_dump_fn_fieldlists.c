
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct fn_field {int dummy; } ;


 struct fn_field* TYPE_FN_FIELDLIST1 (struct type*,int) ;
 int TYPE_FN_FIELDLISTS (struct type*) ;
 int TYPE_FN_FIELDLIST_LENGTH (struct type*,int) ;
 int TYPE_FN_FIELDLIST_NAME (struct type*,int) ;
 int TYPE_FN_FIELD_ARGS (struct fn_field*,int) ;
 int TYPE_FN_FIELD_CONST (struct fn_field*,int) ;
 int TYPE_FN_FIELD_FCONTEXT (struct fn_field*,int) ;
 int TYPE_FN_FIELD_PHYSNAME (struct fn_field*,int) ;
 int TYPE_FN_FIELD_PRIVATE (struct fn_field*,int) ;
 int TYPE_FN_FIELD_PROTECTED (struct fn_field*,int) ;
 int TYPE_FN_FIELD_STUB (struct fn_field*,int) ;
 int TYPE_FN_FIELD_TYPE (struct fn_field*,int) ;
 int TYPE_FN_FIELD_VOFFSET (struct fn_field*,int) ;
 int TYPE_FN_FIELD_VOLATILE (struct fn_field*,int) ;
 int TYPE_NFIELDS (int ) ;
 int TYPE_NFN_FIELDS (struct type*) ;
 int gdb_print_host_address (int ,int ) ;
 int gdb_stdout ;
 int print_arg_types (int ,int ,int) ;
 int printf_filtered (char*,...) ;
 int printfi_filtered (int,char*,...) ;
 int recursive_dump_type (int ,int) ;

__attribute__((used)) static void
dump_fn_fieldlists (struct type *type, int spaces)
{
  int method_idx;
  int overload_idx;
  struct fn_field *f;

  printfi_filtered (spaces, "fn_fieldlists ");
  gdb_print_host_address (TYPE_FN_FIELDLISTS (type), gdb_stdout);
  printf_filtered ("\n");
  for (method_idx = 0; method_idx < TYPE_NFN_FIELDS (type); method_idx++)
    {
      f = TYPE_FN_FIELDLIST1 (type, method_idx);
      printfi_filtered (spaces + 2, "[%d] name '%s' (",
   method_idx,
   TYPE_FN_FIELDLIST_NAME (type, method_idx));
      gdb_print_host_address (TYPE_FN_FIELDLIST_NAME (type, method_idx),
         gdb_stdout);
      printf_filtered (") length %d\n",
         TYPE_FN_FIELDLIST_LENGTH (type, method_idx));
      for (overload_idx = 0;
    overload_idx < TYPE_FN_FIELDLIST_LENGTH (type, method_idx);
    overload_idx++)
 {
   printfi_filtered (spaces + 4, "[%d] physname '%s' (",
       overload_idx,
       TYPE_FN_FIELD_PHYSNAME (f, overload_idx));
   gdb_print_host_address (TYPE_FN_FIELD_PHYSNAME (f, overload_idx),
      gdb_stdout);
   printf_filtered (")\n");
   printfi_filtered (spaces + 8, "type ");
   gdb_print_host_address (TYPE_FN_FIELD_TYPE (f, overload_idx), gdb_stdout);
   printf_filtered ("\n");

   recursive_dump_type (TYPE_FN_FIELD_TYPE (f, overload_idx),
          spaces + 8 + 2);

   printfi_filtered (spaces + 8, "args ");
   gdb_print_host_address (TYPE_FN_FIELD_ARGS (f, overload_idx), gdb_stdout);
   printf_filtered ("\n");

   print_arg_types (TYPE_FN_FIELD_ARGS (f, overload_idx),
      TYPE_NFIELDS (TYPE_FN_FIELD_TYPE (f, overload_idx)),
      spaces);
   printfi_filtered (spaces + 8, "fcontext ");
   gdb_print_host_address (TYPE_FN_FIELD_FCONTEXT (f, overload_idx),
      gdb_stdout);
   printf_filtered ("\n");

   printfi_filtered (spaces + 8, "is_const %d\n",
       TYPE_FN_FIELD_CONST (f, overload_idx));
   printfi_filtered (spaces + 8, "is_volatile %d\n",
       TYPE_FN_FIELD_VOLATILE (f, overload_idx));
   printfi_filtered (spaces + 8, "is_private %d\n",
       TYPE_FN_FIELD_PRIVATE (f, overload_idx));
   printfi_filtered (spaces + 8, "is_protected %d\n",
       TYPE_FN_FIELD_PROTECTED (f, overload_idx));
   printfi_filtered (spaces + 8, "is_stub %d\n",
       TYPE_FN_FIELD_STUB (f, overload_idx));
   printfi_filtered (spaces + 8, "voffset %u\n",
       TYPE_FN_FIELD_VOFFSET (f, overload_idx));
 }
    }
}
