
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int section ;


 char* ASTRDUP (char const*) ;
 scalar_t__ DECL_ONE_ONLY (scalar_t__) ;
 scalar_t__ DECL_SECTION_NAME (scalar_t__) ;
 int SECTION_LINKONCE ;
 int SECTION_WRITE ;
 int TARGET_ABICALLS ;
 scalar_t__ TARGET_GPWORD ;
 char* TREE_STRING_POINTER (scalar_t__) ;
 int * data_section ;
 int * default_function_rodata_section (scalar_t__) ;
 scalar_t__ flag_data_sections ;
 scalar_t__ flag_function_sections ;
 int * get_section (char*,int,scalar_t__) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static section *
mips_function_rodata_section (tree decl)
{
  if (!TARGET_ABICALLS || TARGET_GPWORD)
    return default_function_rodata_section (decl);

  if (decl && DECL_SECTION_NAME (decl))
    {
      const char *name = TREE_STRING_POINTER (DECL_SECTION_NAME (decl));
      if (DECL_ONE_ONLY (decl) && strncmp (name, ".gnu.linkonce.t.", 16) == 0)
 {
   char *rname = ASTRDUP (name);
   rname[14] = 'd';
   return get_section (rname, SECTION_LINKONCE | SECTION_WRITE, decl);
 }
      else if (flag_function_sections && flag_data_sections
        && strncmp (name, ".text.", 6) == 0)
 {
   char *rname = ASTRDUP (name);
   memcpy (rname + 1, "data", 4);
   return get_section (rname, SECTION_WRITE, decl);
 }
    }
  return data_section;
}
