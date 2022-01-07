
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ DECL_CONTEXT ;


 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 scalar_t__ DECL_PENDING_INLINE_INFO (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;

__attribute__((used)) static void
fixup_pending_inline (tree fn)
{
  if (DECL_PENDING_INLINE_INFO (fn))
    {
      tree args = DECL_ARGUMENTS (fn);
      while (args)
 {
   DECL_CONTEXT (args) = fn;
   args = TREE_CHAIN (args);
 }
    }
}
