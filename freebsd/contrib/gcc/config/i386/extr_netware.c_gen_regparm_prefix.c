
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 unsigned int BITS_PER_WORD ;
 scalar_t__ COMPLETE_TYPE_P (scalar_t__) ;
 int DECL_ASSEMBLER_NAME (scalar_t__) ;
 char* IDENTIFIER_POINTER (int ) ;
 scalar_t__ NULL_TREE ;
 unsigned int PARM_BOUNDARY ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 unsigned int TREE_INT_CST_LOW (int ) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (int ) ;
 int TYPE_SIZE (scalar_t__) ;
 char* alloca (scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ get_identifier_with_length (char*,int ) ;
 int sprintf (char*,char*,unsigned int,char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ tree_last (scalar_t__) ;
 scalar_t__ void_type_node ;

__attribute__((used)) static tree
gen_regparm_prefix (tree decl, unsigned nregs)
{
  unsigned total = 0;


  const char *asmname = IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (decl));
  char *newsym;
  tree formal_type = TYPE_ARG_TYPES (TREE_TYPE (decl));

  if (formal_type != NULL_TREE)
    {

      if (TREE_VALUE (tree_last (formal_type)) != void_type_node)
 return NULL_TREE;



      while (TREE_VALUE (formal_type) != void_type_node
      && COMPLETE_TYPE_P (TREE_VALUE (formal_type)))
 {
   unsigned parm_size
     = TREE_INT_CST_LOW (TYPE_SIZE (TREE_VALUE (formal_type)));



   parm_size = ((parm_size + PARM_BOUNDARY - 1)
         / PARM_BOUNDARY * PARM_BOUNDARY);
   total += parm_size;
   formal_type = TREE_CHAIN (formal_type);
 }
    }

  if (nregs > total / BITS_PER_WORD)
    nregs = total / BITS_PER_WORD;
  gcc_assert (nregs <= 9);
  newsym = alloca (3 + strlen (asmname) + 1);
  return get_identifier_with_length (newsym,
         sprintf (newsym,
           "_%u@%s",
           nregs,
           asmname));
}
