
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_NAME (int ) ;
 char* IDENTIFIER_POINTER (int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static bool called_as_built_in (tree node)
{
  const char *name = IDENTIFIER_POINTER (DECL_NAME (node));
  if (strncmp (name, "__builtin_", 10) == 0)
    return 1;
  if (strncmp (name, "__sync_", 7) == 0)
    return 1;
  return 0;
}
