
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int flags ;
typedef int bfd_vma ;
struct TYPE_4__ {int d_val; int d_ptr; } ;
struct TYPE_5__ {int d_tag; TYPE_1__ d_un; } ;
typedef TYPE_2__ Elf_Internal_Dyn ;
 int HEX ;
 int PREFIX_HEX ;
 int fputs (char const*,int ) ;
 int print_vma (int,int ) ;
 int putchar (char) ;
 int stdout ;

__attribute__((used)) static void
dynamic_section_parisc_val (Elf_Internal_Dyn *entry)
{
  switch (entry->d_tag)
    {
    case 136:
      {
 static struct
 {
   long int bit;
   const char *str;
 }
 flags[] =
 {
   { 137, "HP_DEBUG_PRIVATE" },
   { 139, "HP_DEBUG_CALLBACK" },
   { 138, "HP_DEBUG_CALLBACK_BOR" },
   { 131, "HP_NO_ENVVAR" },
   { 143, "HP_BIND_NOW" },
   { 144, "HP_BIND_NONFATAL" },
   { 140, "HP_BIND_VERBOSE" },
   { 142, "HP_BIND_RESTRICTED" },
   { 141, "HP_BIND_SYMBOLIC" },
   { 129, "HP_RPATH_FIRST" },
   { 145, "HP_BIND_DEPTH_FIRST" },
   { 134, "HP_GST" },
   { 128, "HP_SHLIB_FIXED" },
   { 133, "HP_MERGE_SHLIB_SEG" },
   { 132, "HP_NODELETE" },
   { 135, "HP_GROUP" },
   { 130, "HP_PROTECT_LINKAGE_TABLE" }
 };
 int first = 1;
 size_t cnt;
 bfd_vma val = entry->d_un.d_val;

 for (cnt = 0; cnt < sizeof (flags) / sizeof (flags[0]); ++cnt)
   if (val & flags[cnt].bit)
     {
       if (! first)
  putchar (' ');
       fputs (flags[cnt].str, stdout);
       first = 0;
       val ^= flags[cnt].bit;
     }

 if (val != 0 || first)
   {
     if (! first)
       putchar (' ');
     print_vma (val, HEX);
   }
      }
      break;

    default:
      print_vma (entry->d_un.d_ptr, PREFIX_HEX);
      break;
    }
  putchar ('\n');
}
