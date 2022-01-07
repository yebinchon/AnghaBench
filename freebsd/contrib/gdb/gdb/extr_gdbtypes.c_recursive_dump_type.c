
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char type ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ TYPE_ADDRESS_CLASS_1 (char*) ;
 scalar_t__ TYPE_ADDRESS_CLASS_2 (char*) ;
 int TYPE_ARRAY_LOWER_BOUND_TYPE (char*) ;
 int TYPE_ARRAY_UPPER_BOUND_TYPE (char*) ;
 char* TYPE_CHAIN (char*) ;
 int TYPE_CODE (char*) ;
 scalar_t__ TYPE_CODE_SPACE (char*) ;
 scalar_t__ TYPE_CONST (char*) ;
 char* TYPE_CPLUS_SPECIFIC (char*) ;
 scalar_t__ TYPE_DATA_SPACE (char*) ;
 char* TYPE_FIELDS (char*) ;
 int TYPE_FIELD_BITPOS (char*,int) ;
 int TYPE_FIELD_BITSIZE (char*,int) ;
 char* TYPE_FIELD_NAME (char*,int) ;
 char* TYPE_FIELD_TYPE (char*,int) ;
 int TYPE_FLAGS (char*) ;
 TYPE_1__* TYPE_FLOATFORMAT (char*) ;
 scalar_t__ TYPE_INCOMPLETE (char*) ;
 int TYPE_INSTANCE_FLAGS (char*) ;
 int TYPE_LENGTH (char*) ;
 char* TYPE_NAME (char*) ;
 int TYPE_NFIELDS (char*) ;
 scalar_t__ TYPE_NFN_FIELDS (char*) ;
 scalar_t__ TYPE_NOSIGN (char*) ;
 char* TYPE_OBJFILE (char*) ;
 char* TYPE_POINTER_TYPE (char*) ;
 scalar_t__ TYPE_PROTOTYPED (char*) ;
 char* TYPE_REFERENCE_TYPE (char*) ;
 scalar_t__ TYPE_STATIC (char*) ;
 scalar_t__ TYPE_STUB (char*) ;
 char* TYPE_TAG_NAME (char*) ;
 scalar_t__ TYPE_TARGET_STUB (char*) ;
 char* TYPE_TARGET_TYPE (char*) ;
 scalar_t__ TYPE_UNSIGNED (char*) ;
 scalar_t__ TYPE_VARARGS (char*) ;
 scalar_t__ TYPE_VECTOR (char*) ;
 scalar_t__ TYPE_VOLATILE (char*) ;
 char* TYPE_VPTR_BASETYPE (char*) ;
 int TYPE_VPTR_FIELDNO (char*) ;
 int dont_print_type_obstack ;
 int gdb_print_host_address (char*,int ) ;
 int gdb_stdout ;
 scalar_t__ obstack_base (int *) ;
 int obstack_begin (int *,int ) ;
 int obstack_free (int *,int *) ;
 scalar_t__ obstack_next_free (int *) ;
 int obstack_ptr_grow (int *,char*) ;
 int print_bound_type (int ) ;
 int print_cplus_stuff (char*,int) ;
 int printf_filtered (char*,...) ;
 int printfi_filtered (int,char*,...) ;
 int puts_filtered (char*) ;

void
recursive_dump_type (struct type *type, int spaces)
{
  int idx;

  if (spaces == 0)
    obstack_begin (&dont_print_type_obstack, 0);

  if (TYPE_NFIELDS (type) > 0
      || (TYPE_CPLUS_SPECIFIC (type) && TYPE_NFN_FIELDS (type) > 0))
    {
      struct type **first_dont_print
      = (struct type **) obstack_base (&dont_print_type_obstack);

      int i = (struct type **) obstack_next_free (&dont_print_type_obstack)
      - first_dont_print;

      while (--i >= 0)
 {
   if (type == first_dont_print[i])
     {
       printfi_filtered (spaces, "type node ");
       gdb_print_host_address (type, gdb_stdout);
       printf_filtered (" <same as already seen type>\n");
       return;
     }
 }

      obstack_ptr_grow (&dont_print_type_obstack, type);
    }

  printfi_filtered (spaces, "type node ");
  gdb_print_host_address (type, gdb_stdout);
  printf_filtered ("\n");
  printfi_filtered (spaces, "name '%s' (",
      TYPE_NAME (type) ? TYPE_NAME (type) : "<NULL>");
  gdb_print_host_address (TYPE_NAME (type), gdb_stdout);
  printf_filtered (")\n");
  printfi_filtered (spaces, "tagname '%s' (",
      TYPE_TAG_NAME (type) ? TYPE_TAG_NAME (type) : "<NULL>");
  gdb_print_host_address (TYPE_TAG_NAME (type), gdb_stdout);
  printf_filtered (")\n");
  printfi_filtered (spaces, "code 0x%x ", TYPE_CODE (type));
  switch (TYPE_CODE (type))
    {
    case 130:
      printf_filtered ("(TYPE_CODE_UNDEF)");
      break;
    case 139:
      printf_filtered ("(TYPE_CODE_PTR)");
      break;
    case 152:
      printf_filtered ("(TYPE_CODE_ARRAY)");
      break;
    case 134:
      printf_filtered ("(TYPE_CODE_STRUCT)");
      break;
    case 129:
      printf_filtered ("(TYPE_CODE_UNION)");
      break;
    case 147:
      printf_filtered ("(TYPE_CODE_ENUM)");
      break;
    case 144:
      printf_filtered ("(TYPE_CODE_FUNC)");
      break;
    case 143:
      printf_filtered ("(TYPE_CODE_INT)");
      break;
    case 145:
      printf_filtered ("(TYPE_CODE_FLT)");
      break;
    case 128:
      printf_filtered ("(TYPE_CODE_VOID)");
      break;
    case 136:
      printf_filtered ("(TYPE_CODE_SET)");
      break;
    case 138:
      printf_filtered ("(TYPE_CODE_RANGE)");
      break;
    case 135:
      printf_filtered ("(TYPE_CODE_STRING)");
      break;
    case 151:
      printf_filtered ("(TYPE_CODE_BITSTRING)");
      break;
    case 146:
      printf_filtered ("(TYPE_CODE_ERROR)");
      break;
    case 142:
      printf_filtered ("(TYPE_CODE_MEMBER)");
      break;
    case 141:
      printf_filtered ("(TYPE_CODE_METHOD)");
      break;
    case 137:
      printf_filtered ("(TYPE_CODE_REF)");
      break;
    case 149:
      printf_filtered ("(TYPE_CODE_CHAR)");
      break;
    case 150:
      printf_filtered ("(TYPE_CODE_BOOL)");
      break;
    case 148:
      printf_filtered ("(TYPE_CODE_COMPLEX)");
      break;
    case 131:
      printf_filtered ("(TYPE_CODE_TYPEDEF)");
      break;
    case 133:
      printf_filtered ("(TYPE_CODE_TEMPLATE)");
      break;
    case 132:
      printf_filtered ("(TYPE_CODE_TEMPLATE_ARG)");
      break;
    case 140:
      printf_filtered ("(TYPE_CODE_NAMESPACE)");
      break;
    default:
      printf_filtered ("(UNKNOWN TYPE CODE)");
      break;
    }
  puts_filtered ("\n");
  printfi_filtered (spaces, "length %d\n", TYPE_LENGTH (type));
  printfi_filtered (spaces, "upper_bound_type 0x%x ",
      TYPE_ARRAY_UPPER_BOUND_TYPE (type));
  print_bound_type (TYPE_ARRAY_UPPER_BOUND_TYPE (type));
  puts_filtered ("\n");
  printfi_filtered (spaces, "lower_bound_type 0x%x ",
      TYPE_ARRAY_LOWER_BOUND_TYPE (type));
  print_bound_type (TYPE_ARRAY_LOWER_BOUND_TYPE (type));
  puts_filtered ("\n");
  printfi_filtered (spaces, "objfile ");
  gdb_print_host_address (TYPE_OBJFILE (type), gdb_stdout);
  printf_filtered ("\n");
  printfi_filtered (spaces, "target_type ");
  gdb_print_host_address (TYPE_TARGET_TYPE (type), gdb_stdout);
  printf_filtered ("\n");
  if (TYPE_TARGET_TYPE (type) != ((void*)0))
    {
      recursive_dump_type (TYPE_TARGET_TYPE (type), spaces + 2);
    }
  printfi_filtered (spaces, "pointer_type ");
  gdb_print_host_address (TYPE_POINTER_TYPE (type), gdb_stdout);
  printf_filtered ("\n");
  printfi_filtered (spaces, "reference_type ");
  gdb_print_host_address (TYPE_REFERENCE_TYPE (type), gdb_stdout);
  printf_filtered ("\n");
  printfi_filtered (spaces, "type_chain ");
  gdb_print_host_address (TYPE_CHAIN (type), gdb_stdout);
  printf_filtered ("\n");
  printfi_filtered (spaces, "instance_flags 0x%x", TYPE_INSTANCE_FLAGS (type));
  if (TYPE_CONST (type))
    {
      puts_filtered (" TYPE_FLAG_CONST");
    }
  if (TYPE_VOLATILE (type))
    {
      puts_filtered (" TYPE_FLAG_VOLATILE");
    }
  if (TYPE_CODE_SPACE (type))
    {
      puts_filtered (" TYPE_FLAG_CODE_SPACE");
    }
  if (TYPE_DATA_SPACE (type))
    {
      puts_filtered (" TYPE_FLAG_DATA_SPACE");
    }
  if (TYPE_ADDRESS_CLASS_1 (type))
    {
      puts_filtered (" TYPE_FLAG_ADDRESS_CLASS_1");
    }
  if (TYPE_ADDRESS_CLASS_2 (type))
    {
      puts_filtered (" TYPE_FLAG_ADDRESS_CLASS_2");
    }
  puts_filtered ("\n");
  printfi_filtered (spaces, "flags 0x%x", TYPE_FLAGS (type));
  if (TYPE_UNSIGNED (type))
    {
      puts_filtered (" TYPE_FLAG_UNSIGNED");
    }
  if (TYPE_NOSIGN (type))
    {
      puts_filtered (" TYPE_FLAG_NOSIGN");
    }
  if (TYPE_STUB (type))
    {
      puts_filtered (" TYPE_FLAG_STUB");
    }
  if (TYPE_TARGET_STUB (type))
    {
      puts_filtered (" TYPE_FLAG_TARGET_STUB");
    }
  if (TYPE_STATIC (type))
    {
      puts_filtered (" TYPE_FLAG_STATIC");
    }
  if (TYPE_PROTOTYPED (type))
    {
      puts_filtered (" TYPE_FLAG_PROTOTYPED");
    }
  if (TYPE_INCOMPLETE (type))
    {
      puts_filtered (" TYPE_FLAG_INCOMPLETE");
    }
  if (TYPE_VARARGS (type))
    {
      puts_filtered (" TYPE_FLAG_VARARGS");
    }



  if (TYPE_VECTOR (type))
    {
      puts_filtered (" TYPE_FLAG_VECTOR");
    }
  puts_filtered ("\n");
  printfi_filtered (spaces, "nfields %d ", TYPE_NFIELDS (type));
  gdb_print_host_address (TYPE_FIELDS (type), gdb_stdout);
  puts_filtered ("\n");
  for (idx = 0; idx < TYPE_NFIELDS (type); idx++)
    {
      printfi_filtered (spaces + 2,
   "[%d] bitpos %d bitsize %d type ",
   idx, TYPE_FIELD_BITPOS (type, idx),
   TYPE_FIELD_BITSIZE (type, idx));
      gdb_print_host_address (TYPE_FIELD_TYPE (type, idx), gdb_stdout);
      printf_filtered (" name '%s' (",
         TYPE_FIELD_NAME (type, idx) != ((void*)0)
         ? TYPE_FIELD_NAME (type, idx)
         : "<NULL>");
      gdb_print_host_address (TYPE_FIELD_NAME (type, idx), gdb_stdout);
      printf_filtered (")\n");
      if (TYPE_FIELD_TYPE (type, idx) != ((void*)0))
 {
   recursive_dump_type (TYPE_FIELD_TYPE (type, idx), spaces + 4);
 }
    }
  printfi_filtered (spaces, "vptr_basetype ");
  gdb_print_host_address (TYPE_VPTR_BASETYPE (type), gdb_stdout);
  puts_filtered ("\n");
  if (TYPE_VPTR_BASETYPE (type) != ((void*)0))
    {
      recursive_dump_type (TYPE_VPTR_BASETYPE (type), spaces + 2);
    }
  printfi_filtered (spaces, "vptr_fieldno %d\n", TYPE_VPTR_FIELDNO (type));
  switch (TYPE_CODE (type))
    {
    case 134:
      printfi_filtered (spaces, "cplus_stuff ");
      gdb_print_host_address (TYPE_CPLUS_SPECIFIC (type), gdb_stdout);
      puts_filtered ("\n");
      print_cplus_stuff (type, spaces);
      break;

    case 145:
      printfi_filtered (spaces, "floatformat ");
      if (TYPE_FLOATFORMAT (type) == ((void*)0)
   || TYPE_FLOATFORMAT (type)->name == ((void*)0))
 puts_filtered ("(null)");
      else
 puts_filtered (TYPE_FLOATFORMAT (type)->name);
      puts_filtered ("\n");
      break;

    default:



      printfi_filtered (spaces, "type_specific ");
      gdb_print_host_address (TYPE_CPLUS_SPECIFIC (type), gdb_stdout);
      if (TYPE_CPLUS_SPECIFIC (type) != ((void*)0))
 {
   printf_filtered (" (unknown data form)");
 }
      printf_filtered ("\n");
      break;

    }
  if (spaces == 0)
    obstack_free (&dont_print_type_obstack, ((void*)0));
}
