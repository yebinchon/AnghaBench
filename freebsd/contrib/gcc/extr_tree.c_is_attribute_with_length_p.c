
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int IDENTIFIER_LENGTH (int ) ;
 scalar_t__ IDENTIFIER_NODE ;
 char* IDENTIFIER_POINTER (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int gcc_assert (int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int
is_attribute_with_length_p (const char *attr, int attr_len, tree ident)
{
  int ident_len;
  const char *p;

  if (TREE_CODE (ident) != IDENTIFIER_NODE)
    return 0;

  p = IDENTIFIER_POINTER (ident);
  ident_len = IDENTIFIER_LENGTH (ident);

  if (ident_len == attr_len
      && strcmp (attr, p) == 0)
    return 1;


  if (attr[0] == '_')
    {
      gcc_assert (attr[1] == '_');
      gcc_assert (attr[attr_len - 2] == '_');
      gcc_assert (attr[attr_len - 1] == '_');
      if (ident_len == attr_len - 4
   && strncmp (attr + 2, p, attr_len - 4) == 0)
 return 1;
    }
  else
    {
      if (ident_len == attr_len + 4
   && p[0] == '_' && p[1] == '_'
   && p[ident_len - 2] == '_' && p[ident_len - 1] == '_'
   && strncmp (attr, p + 2, attr_len) == 0)
 return 1;
    }

  return 0;
}
