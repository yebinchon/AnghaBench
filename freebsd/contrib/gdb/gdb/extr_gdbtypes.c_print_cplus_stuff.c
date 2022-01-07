
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int * TYPE_FIELD_PRIVATE_BITS (struct type*) ;
 int * TYPE_FIELD_PROTECTED_BITS (struct type*) ;
 int * TYPE_FIELD_VIRTUAL_BITS (struct type*) ;
 scalar_t__ TYPE_NFIELDS (struct type*) ;
 scalar_t__ TYPE_NFN_FIELDS (struct type*) ;
 scalar_t__ TYPE_NFN_FIELDS_TOTAL (struct type*) ;
 scalar_t__ TYPE_N_BASECLASSES (struct type*) ;
 int dump_fn_fieldlists (struct type*,int) ;
 int gdb_print_host_address (int *,int ) ;
 int gdb_stdout ;
 int print_bit_vector (int *,scalar_t__) ;
 int printf_filtered (char*) ;
 int printfi_filtered (int,char*,scalar_t__) ;
 int puts_filtered (char*) ;

__attribute__((used)) static void
print_cplus_stuff (struct type *type, int spaces)
{
  printfi_filtered (spaces, "n_baseclasses %d\n",
      TYPE_N_BASECLASSES (type));
  printfi_filtered (spaces, "nfn_fields %d\n",
      TYPE_NFN_FIELDS (type));
  printfi_filtered (spaces, "nfn_fields_total %d\n",
      TYPE_NFN_FIELDS_TOTAL (type));
  if (TYPE_N_BASECLASSES (type) > 0)
    {
      printfi_filtered (spaces, "virtual_field_bits (%d bits at *",
   TYPE_N_BASECLASSES (type));
      gdb_print_host_address (TYPE_FIELD_VIRTUAL_BITS (type), gdb_stdout);
      printf_filtered (")");

      print_bit_vector (TYPE_FIELD_VIRTUAL_BITS (type),
   TYPE_N_BASECLASSES (type));
      puts_filtered ("\n");
    }
  if (TYPE_NFIELDS (type) > 0)
    {
      if (TYPE_FIELD_PRIVATE_BITS (type) != ((void*)0))
 {
   printfi_filtered (spaces, "private_field_bits (%d bits at *",
       TYPE_NFIELDS (type));
   gdb_print_host_address (TYPE_FIELD_PRIVATE_BITS (type), gdb_stdout);
   printf_filtered (")");
   print_bit_vector (TYPE_FIELD_PRIVATE_BITS (type),
       TYPE_NFIELDS (type));
   puts_filtered ("\n");
 }
      if (TYPE_FIELD_PROTECTED_BITS (type) != ((void*)0))
 {
   printfi_filtered (spaces, "protected_field_bits (%d bits at *",
       TYPE_NFIELDS (type));
   gdb_print_host_address (TYPE_FIELD_PROTECTED_BITS (type), gdb_stdout);
   printf_filtered (")");
   print_bit_vector (TYPE_FIELD_PROTECTED_BITS (type),
       TYPE_NFIELDS (type));
   puts_filtered ("\n");
 }
    }
  if (TYPE_NFN_FIELDS (type) > 0)
    {
      dump_fn_fieldlists (type, spaces);
    }
}
