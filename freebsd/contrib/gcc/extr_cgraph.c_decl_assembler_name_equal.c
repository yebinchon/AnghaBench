
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_ASSEMBLER_NAME (scalar_t__) ;
 char* IDENTIFIER_POINTER (scalar_t__) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,size_t) ;
 int user_label_prefix ;

__attribute__((used)) static bool
decl_assembler_name_equal (tree decl, tree asmname)
{
  tree decl_asmname = DECL_ASSEMBLER_NAME (decl);

  if (decl_asmname == asmname)
    return 1;







  if (IDENTIFIER_POINTER (decl_asmname)[0] == '*')
    {
      const char *decl_str = IDENTIFIER_POINTER (decl_asmname) + 1;
      size_t ulp_len = strlen (user_label_prefix);

      if (ulp_len == 0)
 ;
      else if (strncmp (decl_str, user_label_prefix, ulp_len) == 0)
 decl_str += ulp_len;
      else
 return 0;

      return strcmp (decl_str, IDENTIFIER_POINTER (asmname)) == 0;
    }

  return 0;
}
