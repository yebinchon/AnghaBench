
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
typedef struct symbol minimal_symbol ;
struct TYPE_7__ {int name; } ;
typedef TYPE_1__ asection ;
struct TYPE_9__ {int (* describe_location ) (struct symbol*,int ) ;} ;
struct TYPE_8__ {scalar_t__ la_language; } ;
typedef int CORE_ADDR ;


 int BLOCK_START (int ) ;
 char* DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 int DMGL_ANSI ;
 int REGISTER_NAME (long) ;
 long SYMBOL_BASEREG (struct symbol*) ;
 TYPE_1__* SYMBOL_BFD_SECTION (struct symbol*) ;
 int SYMBOL_BLOCK_VALUE (struct symbol*) ;
 int SYMBOL_CLASS (struct symbol*) ;
 TYPE_5__* SYMBOL_OPS (struct symbol*) ;
 long SYMBOL_VALUE (struct symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct symbol*) ;
 int VAR_DOMAIN ;
 TYPE_4__* current_language ;
 int error (char*,...) ;
 int fprintf_symbol_filtered (int ,char*,scalar_t__,int ) ;
 int gdb_stdout ;
 int get_selected_block (int ) ;
 scalar_t__ language_objc ;
 struct symbol* lookup_minimal_symbol (char*,int *,int *) ;
 struct symbol* lookup_symbol (char*,int ,int ,int*,struct symtab**) ;
 int overlay_unmapped_address (int ,TYPE_1__*) ;
 int print_address_numeric (int ,int,int ) ;
 int printf_filtered (char*,...) ;
 scalar_t__ section_is_overlay (TYPE_1__*) ;
 int stub1 (struct symbol*,int ) ;

__attribute__((used)) static void
address_info (char *exp, int from_tty)
{
  struct symbol *sym;
  struct minimal_symbol *msymbol;
  long val;
  long basereg;
  asection *section;
  CORE_ADDR load_addr;
  int is_a_field_of_this;


  if (exp == 0)
    error ("Argument required.");

  sym = lookup_symbol (exp, get_selected_block (0), VAR_DOMAIN,
         &is_a_field_of_this, (struct symtab **) ((void*)0));
  if (sym == ((void*)0))
    {
      if (is_a_field_of_this)
 {
   printf_filtered ("Symbol \"");
   fprintf_symbol_filtered (gdb_stdout, exp,
       current_language->la_language, DMGL_ANSI);
   printf_filtered ("\" is a field of the local class variable ");
   if (current_language->la_language == language_objc)
     printf_filtered ("`self'\n");
   else
     printf_filtered ("`this'\n");
   return;
 }

      msymbol = lookup_minimal_symbol (exp, ((void*)0), ((void*)0));

      if (msymbol != ((void*)0))
 {
   load_addr = SYMBOL_VALUE_ADDRESS (msymbol);

   printf_filtered ("Symbol \"");
   fprintf_symbol_filtered (gdb_stdout, exp,
       current_language->la_language, DMGL_ANSI);
   printf_filtered ("\" is at ");
   print_address_numeric (load_addr, 1, gdb_stdout);
   printf_filtered (" in a file compiled without debugging");
   section = SYMBOL_BFD_SECTION (msymbol);
   if (section_is_overlay (section))
     {
       load_addr = overlay_unmapped_address (load_addr, section);
       printf_filtered (",\n -- loaded at ");
       print_address_numeric (load_addr, 1, gdb_stdout);
       printf_filtered (" in overlay section %s", section->name);
     }
   printf_filtered (".\n");
 }
      else
 error ("No symbol \"%s\" in current context.", exp);
      return;
    }

  printf_filtered ("Symbol \"");
  fprintf_symbol_filtered (gdb_stdout, DEPRECATED_SYMBOL_NAME (sym),
      current_language->la_language, DMGL_ANSI);
  printf_filtered ("\" is ");
  val = SYMBOL_VALUE (sym);
  basereg = SYMBOL_BASEREG (sym);
  section = SYMBOL_BFD_SECTION (sym);

  switch (SYMBOL_CLASS (sym))
    {
    case 142:
    case 141:
      printf_filtered ("constant");
      break;

    case 138:
      printf_filtered ("a label at address ");
      print_address_numeric (load_addr = SYMBOL_VALUE_ADDRESS (sym),
        1, gdb_stdout);
      if (section_is_overlay (section))
 {
   load_addr = overlay_unmapped_address (load_addr, section);
   printf_filtered (",\n -- loaded at ");
   print_address_numeric (load_addr, 1, gdb_stdout);
   printf_filtered (" in overlay section %s", section->name);
 }
      break;

    case 144:
    case 143:





      SYMBOL_OPS (sym)->describe_location (sym, gdb_stdout);
      break;

    case 133:
      printf_filtered ("a variable in register %s", REGISTER_NAME (val));
      break;

    case 130:
      printf_filtered ("static storage at address ");
      print_address_numeric (load_addr = SYMBOL_VALUE_ADDRESS (sym),
        1, gdb_stdout);
      if (section_is_overlay (section))
 {
   load_addr = overlay_unmapped_address (load_addr, section);
   printf_filtered (",\n -- loaded at ");
   print_address_numeric (load_addr, 1, gdb_stdout);
   printf_filtered (" in overlay section %s", section->name);
 }
      break;

    case 139:
      printf_filtered ("external global (indirect addressing), at address *(");
      print_address_numeric (load_addr = SYMBOL_VALUE_ADDRESS (sym),
        1, gdb_stdout);
      printf_filtered (")");
      if (section_is_overlay (section))
 {
   load_addr = overlay_unmapped_address (load_addr, section);
   printf_filtered (",\n -- loaded at ");
   print_address_numeric (load_addr, 1, gdb_stdout);
   printf_filtered (" in overlay section %s", section->name);
 }
      break;

    case 132:
      printf_filtered ("an argument in register %s", REGISTER_NAME (val));
      break;

    case 131:
      printf_filtered ("address of an argument in register %s", REGISTER_NAME (val));
      break;

    case 148:
      printf_filtered ("an argument at offset %ld", val);
      break;

    case 136:
      printf_filtered ("an argument at frame offset %ld", val);
      break;

    case 137:
      printf_filtered ("a local variable at frame offset %ld", val);
      break;

    case 134:
      printf_filtered ("a reference argument at offset %ld", val);
      break;

    case 147:
      printf_filtered ("a variable at offset %ld from register %s",
         val, REGISTER_NAME (basereg));
      break;

    case 146:
      printf_filtered ("an argument at offset %ld from register %s",
         val, REGISTER_NAME (basereg));
      break;

    case 129:
      printf_filtered ("a typedef");
      break;

    case 145:
      printf_filtered ("a function at address ");
      print_address_numeric (load_addr = BLOCK_START (SYMBOL_BLOCK_VALUE (sym)),
        1, gdb_stdout);
      if (section_is_overlay (section))
 {
   load_addr = overlay_unmapped_address (load_addr, section);
   printf_filtered (",\n -- loaded at ");
   print_address_numeric (load_addr, 1, gdb_stdout);
   printf_filtered (" in overlay section %s", section->name);
 }
      break;

    case 128:
      {
 struct minimal_symbol *msym;

 msym = lookup_minimal_symbol (DEPRECATED_SYMBOL_NAME (sym), ((void*)0), ((void*)0));
 if (msym == ((void*)0))
   printf_filtered ("unresolved");
 else
   {
     section = SYMBOL_BFD_SECTION (msym);
     printf_filtered ("static storage at address ");
     print_address_numeric (load_addr = SYMBOL_VALUE_ADDRESS (msym),
       1, gdb_stdout);
     if (section_is_overlay (section))
       {
  load_addr = overlay_unmapped_address (load_addr, section);
  printf_filtered (",\n -- loaded at ");
  print_address_numeric (load_addr, 1, gdb_stdout);
  printf_filtered (" in overlay section %s", section->name);
       }
   }
      }
      break;

    case 140:
      printf_filtered (
   "a thread-local variable at offset %ld from the thread base register %s",
   val, REGISTER_NAME (basereg));
      break;

    case 135:
      printf_filtered ("optimized out");
      break;

    default:
      printf_filtered ("of unknown (botched) type");
      break;
    }
  printf_filtered (".\n");
}
