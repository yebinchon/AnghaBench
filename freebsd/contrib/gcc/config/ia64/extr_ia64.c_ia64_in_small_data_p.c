
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ DECL_SECTION_NAME (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ STRING_CST ;
 scalar_t__ TARGET_NO_SDATA ;
 scalar_t__ TREE_CODE (int ) ;
 char* TREE_STRING_POINTER (scalar_t__) ;
 int TREE_TYPE (int ) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ ia64_section_threshold ;
 scalar_t__ int_size_in_bytes (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static bool
ia64_in_small_data_p (tree exp)
{
  if (TARGET_NO_SDATA)
    return 0;


  if (TREE_CODE (exp) == STRING_CST)
    return 0;


  if (TREE_CODE (exp) == FUNCTION_DECL)
    return 0;

  if (TREE_CODE (exp) == VAR_DECL && DECL_SECTION_NAME (exp))
    {
      const char *section = TREE_STRING_POINTER (DECL_SECTION_NAME (exp));

      if (strcmp (section, ".sdata") == 0
   || strncmp (section, ".sdata.", 7) == 0
   || strncmp (section, ".gnu.linkonce.s.", 16) == 0
   || strcmp (section, ".sbss") == 0
   || strncmp (section, ".sbss.", 6) == 0
   || strncmp (section, ".gnu.linkonce.sb.", 17) == 0)
 return 1;
    }
  else
    {
      HOST_WIDE_INT size = int_size_in_bytes (TREE_TYPE (exp));



      if (size > 0 && size <= ia64_section_threshold)
 return 1;
    }

  return 0;
}
