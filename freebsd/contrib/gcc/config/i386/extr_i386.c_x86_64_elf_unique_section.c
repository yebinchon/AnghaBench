
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {char* (* strip_name_encoding ) (char const*) ;} ;
typedef int DECL_SECTION_NAME ;


 scalar_t__ CM_MEDIUM ;
 scalar_t__ CM_MEDIUM_PIC ;
 int DECL_ASSEMBLER_NAME (int ) ;
 scalar_t__ DECL_ONE_ONLY (int ) ;
 int HAVE_COMDAT_GROUP ;
 char* IDENTIFIER_POINTER (int ) ;
 char* alloca (size_t) ;
 int build_string (size_t,char*) ;
 int categorize_decl_for_section (int ,int) ;
 int default_unique_section (int ,int) ;
 int gcc_unreachable () ;
 scalar_t__ ix86_cmodel ;
 scalar_t__ ix86_in_large_data_p (int ) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 char* stub1 (char const*) ;
 TYPE_1__ targetm ;

__attribute__((used)) static void
x86_64_elf_unique_section (tree decl, int reloc)
{
  if ((ix86_cmodel == CM_MEDIUM || ix86_cmodel == CM_MEDIUM_PIC)
      && ix86_in_large_data_p (decl))
    {
      const char *prefix = ((void*)0);

      bool one_only = DECL_ONE_ONLY (decl) && !HAVE_COMDAT_GROUP;

      switch (categorize_decl_for_section (decl, reloc))
 {
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
          prefix = one_only ? ".gnu.linkonce.ld." : ".ldata.";
   break;
 case 143:
          prefix = one_only ? ".gnu.linkonce.lb." : ".lbss.";
   break;
 case 137:
 case 135:
 case 134:
 case 136:
          prefix = one_only ? ".gnu.linkonce.lr." : ".lrodata.";
   break;
 case 131:
 case 132:
 case 133:
   gcc_unreachable ();
 case 128:
 case 129:
 case 130:


   break;
 }
      if (prefix)
 {
   const char *name;
   size_t nlen, plen;
   char *string;
   plen = strlen (prefix);

   name = IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (decl));
   name = targetm.strip_name_encoding (name);
   nlen = strlen (name);

   string = alloca (nlen + plen + 1);
   memcpy (string, prefix, plen);
   memcpy (string + plen, name, nlen + 1);

   DECL_SECTION_NAME (decl) = build_string (nlen + plen, string);
   return;
 }
    }
  default_unique_section (decl, reloc);
}
