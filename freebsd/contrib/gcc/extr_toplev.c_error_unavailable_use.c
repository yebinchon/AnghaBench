
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ DECL_P (scalar_t__) ;
 char* DECL_SOURCE_FILE (scalar_t__) ;
 char* DECL_SOURCE_LINE (scalar_t__) ;
 scalar_t__ IDENTIFIER_NODE ;
 char* IDENTIFIER_POINTER (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ TYPE_STUB_DECL (scalar_t__) ;
 int error (char*,...) ;

void
error_unavailable_use (tree node)
{
  if (node == 0)
    return;

  if (DECL_P (node))
    error ("%qs is unavailable (declared at %s:%d)",
    IDENTIFIER_POINTER (DECL_NAME (node)),
    DECL_SOURCE_FILE (node), DECL_SOURCE_LINE (node));
  else if (TYPE_P (node))
    {
      const char *what = ((void*)0);
      tree decl = TYPE_STUB_DECL (node);

      if (TREE_CODE (TYPE_NAME (node)) == IDENTIFIER_NODE)
 what = IDENTIFIER_POINTER (TYPE_NAME (node));
      else if (TREE_CODE (TYPE_NAME (node)) == TYPE_DECL
        && DECL_NAME (TYPE_NAME (node)))
 what = IDENTIFIER_POINTER (DECL_NAME (TYPE_NAME (node)));

      if (what)
 {
   if (decl)
     error ("%qs is unavailable (declared at %s:%d)", what,
     DECL_SOURCE_FILE (decl), DECL_SOURCE_LINE (decl));
   else
     error ("%qs is unavailable", what);
 }
      else if (decl)
 error ("type is unavailable (declared at %s:%d)",
        DECL_SOURCE_FILE (decl), DECL_SOURCE_LINE (decl));
      else
 error ("type is unavailable");
    }
}
