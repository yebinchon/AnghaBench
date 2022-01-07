
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int section ;


 scalar_t__ DECL_ONE_ONLY (scalar_t__) ;
 scalar_t__ DECL_SECTION_NAME (scalar_t__) ;
 scalar_t__ HAVE_COMDAT_GROUP ;
 scalar_t__ NULL_TREE ;
 int SECTION_LINKONCE ;
 char* TREE_STRING_POINTER (scalar_t__) ;
 char* alloca (size_t) ;
 scalar_t__ flag_data_sections ;
 scalar_t__ flag_function_sections ;
 int * get_section (char*,int ,scalar_t__) ;
 int memcpy (char*,char const*,size_t) ;
 int * readonly_data_section ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

section *
default_function_rodata_section (tree decl)
{
  if (decl != NULL_TREE && DECL_SECTION_NAME (decl))
    {
      const char *name = TREE_STRING_POINTER (DECL_SECTION_NAME (decl));

      if (DECL_ONE_ONLY (decl) && HAVE_COMDAT_GROUP)
        {
   size_t len = strlen (name) + 3;
   char* rname = alloca (len);

   strcpy (rname, ".rodata");
   strcat (rname, name + 5);
   return get_section (rname, SECTION_LINKONCE, decl);
 }

      else if (DECL_ONE_ONLY (decl)
        && strncmp (name, ".gnu.linkonce.t.", 16) == 0)
 {
   size_t len = strlen (name) + 1;
   char *rname = alloca (len);

   memcpy (rname, name, len);
   rname[14] = 'r';
   return get_section (rname, SECTION_LINKONCE, decl);
 }

      else if (flag_function_sections && flag_data_sections
        && strncmp (name, ".text.", 6) == 0)
 {
   size_t len = strlen (name) + 1;
   char *rname = alloca (len + 2);

   memcpy (rname, ".rodata", 7);
   memcpy (rname + 7, name + 5, len - 5);
   return get_section (rname, 0, decl);
 }
    }

  return readonly_data_section;
}
