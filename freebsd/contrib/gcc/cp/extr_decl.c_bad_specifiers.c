
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_DECL ;
 int TYPE_PTRFN_P (int ) ;
 int TYPE_PTRMEMFUNC_P (int ) ;
 int TYPE_REFFN_P (int ) ;
 int error (char*,int ,...) ;

__attribute__((used)) static void
bad_specifiers (tree object,
  const char* type,
  int virtualp,
  int quals,
  int inlinep,
  int friendp,
  int raises)
{
  if (virtualp)
    error ("%qD declared as a %<virtual%> %s", object, type);
  if (inlinep)
    error ("%qD declared as an %<inline%> %s", object, type);
  if (quals)
    error ("%<const%> and %<volatile%> function specifiers on "
    "%qD invalid in %s declaration",
    object, type);
  if (friendp)
    error ("%q+D declared as a friend", object);
  if (raises
      && (TREE_CODE (object) == TYPE_DECL
   || (!TYPE_PTRFN_P (TREE_TYPE (object))
       && !TYPE_REFFN_P (TREE_TYPE (object))
       && !TYPE_PTRMEMFUNC_P (TREE_TYPE (object)))))
    error ("%q+D declared with an exception specification", object);
}
