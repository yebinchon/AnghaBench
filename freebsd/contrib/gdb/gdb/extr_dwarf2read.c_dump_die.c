
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct die_info {unsigned int num_attrs; TYPE_1__* attrs; int * child; int offset; int abbrev; int tag; } ;
struct TYPE_7__ {int size; } ;
struct TYPE_6__ {int form; int name; } ;


 int DW_ADDR (TYPE_1__*) ;
 TYPE_3__* DW_BLOCK (TYPE_1__*) ;
 char* DW_STRING (TYPE_1__*) ;
 int DW_UNSND (TYPE_1__*) ;
 int dwarf_attr_name (int ) ;
 int dwarf_bool_name (int ) ;
 int dwarf_form_name (int) ;
 int dwarf_tag_name (int ) ;
 int fprintf_unfiltered (int ,char*,...) ;
 int gdb_stderr ;
 int print_address_numeric (int ,int,int ) ;

__attribute__((used)) static void
dump_die (struct die_info *die)
{
  unsigned int i;

  fprintf_unfiltered (gdb_stderr, "Die: %s (abbrev = %d, offset = %d)\n",
    dwarf_tag_name (die->tag), die->abbrev, die->offset);
  fprintf_unfiltered (gdb_stderr, "\thas children: %s\n",
    dwarf_bool_name (die->child != ((void*)0)));

  fprintf_unfiltered (gdb_stderr, "\tattributes:\n");
  for (i = 0; i < die->num_attrs; ++i)
    {
      fprintf_unfiltered (gdb_stderr, "\t\t%s (%s) ",
        dwarf_attr_name (die->attrs[i].name),
        dwarf_form_name (die->attrs[i].form));
      switch (die->attrs[i].form)
 {
 case 132:
 case 147:
   fprintf_unfiltered (gdb_stderr, "address: ");
   print_address_numeric (DW_ADDR (&die->attrs[i]), 1, gdb_stderr);
   break;
 case 144:
 case 143:
 case 146:
 case 145:
   fprintf_unfiltered (gdb_stderr, "block: size %d", DW_BLOCK (&die->attrs[i])->size);
   break;
 case 142:
 case 141:
 case 140:
 case 139:
 case 135:
 case 134:
 case 133:
 case 128:
 case 131:
   fprintf_unfiltered (gdb_stderr, "constant: %ld", DW_UNSND (&die->attrs[i]));
   break;
 case 130:
 case 129:
   fprintf_unfiltered (gdb_stderr, "string: \"%s\"",
     DW_STRING (&die->attrs[i])
     ? DW_STRING (&die->attrs[i]) : "");
   break;
 case 138:
   if (DW_UNSND (&die->attrs[i]))
     fprintf_unfiltered (gdb_stderr, "flag: TRUE");
   else
     fprintf_unfiltered (gdb_stderr, "flag: FALSE");
   break;
 case 137:
   fprintf_unfiltered (gdb_stderr, "flag: TRUE");
   break;
 case 136:


   fprintf_unfiltered (gdb_stderr, "unexpected attribute form: DW_FORM_indirect");
   break;
 default:
   fprintf_unfiltered (gdb_stderr, "unsupported attribute form: %d.",
     die->attrs[i].form);
 }
      fprintf_unfiltered (gdb_stderr, "\n");
    }
}
