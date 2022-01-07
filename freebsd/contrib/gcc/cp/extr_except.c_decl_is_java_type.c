
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DERIVED_FROM_P (scalar_t__,scalar_t__) ;
 scalar_t__ IDENTIFIER_GLOBAL_VALUE (int ) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FOR_JAVA (scalar_t__) ;
 int error (char*,scalar_t__) ;
 int fatal_error (char*) ;
 int get_identifier (char*) ;

__attribute__((used)) static bool
decl_is_java_type (tree decl, int err)
{
  bool r = (TREE_CODE (decl) == POINTER_TYPE
     && TREE_CODE (TREE_TYPE (decl)) == RECORD_TYPE
     && TYPE_FOR_JAVA (TREE_TYPE (decl)));

  if (err)
    {
      if (TREE_CODE (decl) == REFERENCE_TYPE
   && TREE_CODE (TREE_TYPE (decl)) == RECORD_TYPE
   && TYPE_FOR_JAVA (TREE_TYPE (decl)))
 {

   error ("type %qT is disallowed in Java %<throw%> or %<catch%>",
   decl);
 }

      if (r)
 {
   tree jthrow_node
     = IDENTIFIER_GLOBAL_VALUE (get_identifier ("jthrowable"));

   if (jthrow_node == NULL_TREE)
     fatal_error
       ("call to Java %<catch%> or %<throw%> with %<jthrowable%> undefined");

   jthrow_node = TREE_TYPE (TREE_TYPE (jthrow_node));

   if (! DERIVED_FROM_P (jthrow_node, TREE_TYPE (decl)))
     {

       error ("type %qT is not derived from %<java::lang::Throwable%>",
       TREE_TYPE (decl));
     }
 }
    }

  return r;
}
