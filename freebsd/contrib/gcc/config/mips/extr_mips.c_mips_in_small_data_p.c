
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ HOST_WIDE_INT ;


 int DECL_EXTERNAL (int ) ;
 int DECL_INITIAL (int ) ;
 scalar_t__ DECL_SECTION_NAME (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ STRING_CST ;
 scalar_t__ TARGET_ABICALLS ;
 scalar_t__ TARGET_EMBEDDED_DATA ;
 scalar_t__ TARGET_EXPLICIT_RELOCS ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_CONSTANT (int ) ;
 scalar_t__ TREE_READONLY (int ) ;
 int TREE_SIDE_EFFECTS (int ) ;
 char* TREE_STRING_POINTER (scalar_t__) ;
 int TREE_TYPE (int ) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ int_size_in_bytes (int ) ;
 scalar_t__ mips_section_threshold ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool
mips_in_small_data_p (tree decl)
{
  HOST_WIDE_INT size;

  if (TREE_CODE (decl) == STRING_CST || TREE_CODE (decl) == FUNCTION_DECL)
    return 0;



  if (TARGET_ABICALLS)
    return 0;

  if (TREE_CODE (decl) == VAR_DECL && DECL_SECTION_NAME (decl) != 0)
    {
      const char *name;


      name = TREE_STRING_POINTER (DECL_SECTION_NAME (decl));
      if (strcmp (name, ".sdata") != 0 && strcmp (name, ".sbss") != 0)
 return 0;



      if (TARGET_EXPLICIT_RELOCS || !DECL_EXTERNAL (decl))
 return 1;
    }
  else if (TARGET_EMBEDDED_DATA)
    {


      if (TREE_CODE (decl) != VAR_DECL)
 return 0;

      if (TREE_READONLY (decl)
   && !TREE_SIDE_EFFECTS (decl)
   && (!DECL_INITIAL (decl) || TREE_CONSTANT (DECL_INITIAL (decl))))
 return 0;
    }

  size = int_size_in_bytes (TREE_TYPE (decl));
  return (size > 0 && size <= mips_section_threshold);
}
