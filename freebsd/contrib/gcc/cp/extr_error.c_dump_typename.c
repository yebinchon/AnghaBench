
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TFF_CLASS_KEY_OR_ENUM ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TYPENAME_TYPE ;
 int TYPENAME_TYPE_FULLNAME (int ) ;
 int TYPE_CONTEXT (int ) ;
 int cxx_pp ;
 int dump_decl (int ,int) ;
 int dump_type (int ,int) ;
 int pp_cxx_colon_colon (int ) ;

__attribute__((used)) static void
dump_typename (tree t, int flags)
{
  tree ctx = TYPE_CONTEXT (t);

  if (TREE_CODE (ctx) == TYPENAME_TYPE)
    dump_typename (ctx, flags);
  else
    dump_type (ctx, flags & ~TFF_CLASS_KEY_OR_ENUM);
  pp_cxx_colon_colon (cxx_pp);
  dump_decl (TYPENAME_TYPE_FULLNAME (t), flags);
}
