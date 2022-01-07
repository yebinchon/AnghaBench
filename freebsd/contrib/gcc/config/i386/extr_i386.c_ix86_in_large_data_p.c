
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ CM_MEDIUM ;
 scalar_t__ CM_MEDIUM_PIC ;
 scalar_t__ DECL_SECTION_NAME (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 char* TREE_STRING_POINTER (scalar_t__) ;
 int TREE_TYPE (int ) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ int_size_in_bytes (int ) ;
 scalar_t__ ix86_cmodel ;
 scalar_t__ ix86_section_threshold ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool
ix86_in_large_data_p (tree exp)
{
  if (ix86_cmodel != CM_MEDIUM && ix86_cmodel != CM_MEDIUM_PIC)
    return 0;


  if (TREE_CODE (exp) == FUNCTION_DECL)
    return 0;

  if (TREE_CODE (exp) == VAR_DECL && DECL_SECTION_NAME (exp))
    {
      const char *section = TREE_STRING_POINTER (DECL_SECTION_NAME (exp));
      if (strcmp (section, ".ldata") == 0
   || strcmp (section, ".lbss") == 0)
 return 1;
      return 0;
    }
  else
    {
      HOST_WIDE_INT size = int_size_in_bytes (TREE_TYPE (exp));



      if (!size || size > ix86_section_threshold)
 return 1;
    }

  return 0;
}
