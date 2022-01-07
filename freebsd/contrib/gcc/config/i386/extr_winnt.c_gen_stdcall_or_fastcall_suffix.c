
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int BITS_PER_UNIT ;
 scalar_t__ COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_ASSEMBLER_NAME (scalar_t__) ;
 int FASTCALL_PREFIX ;
 char* IDENTIFIER_POINTER (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int PARM_BOUNDARY ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (int ) ;
 int TYPE_SIZE (scalar_t__) ;
 char* alloca (scalar_t__) ;
 scalar_t__ get_identifier (char*) ;
 int sprintf (char*,char*,char const*,int) ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ tree_last (scalar_t__) ;
 scalar_t__ void_type_node ;

__attribute__((used)) static tree
gen_stdcall_or_fastcall_suffix (tree decl, bool fastcall)
{
  int total = 0;


   const char *asmname = IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (decl));
  char *newsym;
  char *p;
  tree formal_type;


  if (*asmname == '*' || strchr (asmname, '@'))
    return DECL_ASSEMBLER_NAME (decl);

  formal_type = TYPE_ARG_TYPES (TREE_TYPE (decl));
  if (formal_type != NULL_TREE)
    {



      if (TREE_VALUE (tree_last (formal_type)) != void_type_node)
        return DECL_ASSEMBLER_NAME (decl);



      while (TREE_VALUE (formal_type) != void_type_node
      && COMPLETE_TYPE_P (TREE_VALUE (formal_type)))
 {
   int parm_size
     = TREE_INT_CST_LOW (TYPE_SIZE (TREE_VALUE (formal_type)));


   parm_size = ((parm_size + PARM_BOUNDARY - 1)
         / PARM_BOUNDARY * PARM_BOUNDARY);
   total += parm_size;
   formal_type = TREE_CHAIN (formal_type); }

     }


  newsym = alloca (1 + strlen (asmname) + 1 + 8 + 1);
  p = newsym;
  if (fastcall)
    *p++ = FASTCALL_PREFIX;
  sprintf (p, "%s@%d", asmname, total/BITS_PER_UNIT);
  return get_identifier (newsym);
}
