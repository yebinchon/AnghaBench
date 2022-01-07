
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int CP_TYPE_CONST_NON_VOLATILE_P (scalar_t__) ;
 scalar_t__ CP_TYPE_VOLATILE_P (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int pedwarn (char const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
warn_ref_binding (tree reftype, tree intype, tree decl)
{
  tree ttl = TREE_TYPE (reftype);

  if (!CP_TYPE_CONST_NON_VOLATILE_P (ttl))
    {
      const char *msg;

      if (CP_TYPE_VOLATILE_P (ttl) && decl)
   msg = "initialization of volatile reference type %q#T from"
     " rvalue of type %qT";
      else if (CP_TYPE_VOLATILE_P (ttl))
   msg = "conversion to volatile reference type %q#T "
     " from rvalue of type %qT";
      else if (decl)
   msg = "initialization of non-const reference type %q#T from"
     " rvalue of type %qT";
      else
   msg = "conversion to non-const reference type %q#T from"
     " rvalue of type %qT";

      pedwarn (msg, reftype, intype);
    }
}
