
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_3__ {int line; int file; } ;
typedef TYPE_1__ expanded_location ;


 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ DECL_P (scalar_t__) ;
 int DECL_SOURCE_LOCATION (scalar_t__) ;
 scalar_t__ IDENTIFIER_NODE ;
 char* IDENTIFIER_POINTER (scalar_t__) ;
 int OPT_Wdeprecated_declarations ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ TYPE_STUB_DECL (scalar_t__) ;
 TYPE_1__ expand_location (int ) ;
 int warn_deprecated_decl ;
 int warning (int ,char*,...) ;

void
warn_deprecated_use (tree node)
{
  if (node == 0 || !warn_deprecated_decl)
    return;

  if (DECL_P (node))
    {
      expanded_location xloc = expand_location (DECL_SOURCE_LOCATION (node));
      warning (OPT_Wdeprecated_declarations,
        "%qs is deprecated (declared at %s:%d)",
        IDENTIFIER_POINTER (DECL_NAME (node)),
        xloc.file, xloc.line);
    }
  else if (TYPE_P (node))
    {
      const char *what = ((void*)0);
      tree decl = TYPE_STUB_DECL (node);

      if (TYPE_NAME (node))
 {
   if (TREE_CODE (TYPE_NAME (node)) == IDENTIFIER_NODE)
     what = IDENTIFIER_POINTER (TYPE_NAME (node));
   else if (TREE_CODE (TYPE_NAME (node)) == TYPE_DECL
     && DECL_NAME (TYPE_NAME (node)))
     what = IDENTIFIER_POINTER (DECL_NAME (TYPE_NAME (node)));
 }

      if (decl)
 {
   expanded_location xloc
     = expand_location (DECL_SOURCE_LOCATION (decl));
   if (what)
     warning (OPT_Wdeprecated_declarations,
       "%qs is deprecated (declared at %s:%d)", what,
       xloc.file, xloc.line);
   else
     warning (OPT_Wdeprecated_declarations,
       "type is deprecated (declared at %s:%d)",
       xloc.file, xloc.line);
 }
      else
 {
   if (what)
     warning (OPT_Wdeprecated_declarations, "%qs is deprecated", what);
   else
     warning (OPT_Wdeprecated_declarations, "type is deprecated");
 }
    }
}
