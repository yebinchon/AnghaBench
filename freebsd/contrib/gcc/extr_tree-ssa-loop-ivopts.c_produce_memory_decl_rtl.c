
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int DECL_ASSEMBLER_NAME (int ) ;
 scalar_t__ DECL_EXTERNAL (int ) ;
 int DECL_MODE (int ) ;
 char* IDENTIFIER_POINTER (int ) ;
 int Pmode ;
 scalar_t__ TREE_STATIC (int ) ;
 int gcc_assert (int ) ;
 int gen_raw_REG (int ,int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_SYMBOL_REF (int ,char const*) ;

__attribute__((used)) static rtx
produce_memory_decl_rtl (tree obj, int *regno)
{
  rtx x;

  gcc_assert (obj);
  if (TREE_STATIC (obj) || DECL_EXTERNAL (obj))
    {
      const char *name = IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (obj));
      x = gen_rtx_SYMBOL_REF (Pmode, name);
    }
  else
    x = gen_raw_REG (Pmode, (*regno)++);

  return gen_rtx_MEM (DECL_MODE (obj), x);
}
