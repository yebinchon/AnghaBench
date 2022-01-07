
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;
struct TYPE_2__ {scalar_t__ (* binds_local_p ) (scalar_t__) ;} ;


 scalar_t__ CONSTANT_POOL_ADDRESS_P (int ) ;
 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 scalar_t__ LABEL_REF ;
 int SYMBOL_CONSTANT_POOL ;
 int SYMBOL_GENERAL ;
 int SYMBOL_GOT_GLOBAL ;
 int SYMBOL_GOT_LOCAL ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_DECL (int ) ;
 int SYMBOL_REF_LOCAL_P (int ) ;
 scalar_t__ SYMBOL_REF_SMALL_P (int ) ;
 scalar_t__ SYMBOL_REF_TLS_MODEL (int ) ;
 int SYMBOL_REF_WEAK (int ) ;
 int SYMBOL_SMALL_DATA ;
 int SYMBOL_TLS ;
 scalar_t__ TARGET_ABICALLS ;
 scalar_t__ TARGET_ABSOLUTE_ABICALLS ;
 scalar_t__ TARGET_MIPS16 ;
 scalar_t__ TREE_PUBLIC (scalar_t__) ;
 int gcc_assert (int) ;
 int get_pool_mode (int ) ;
 scalar_t__ mips_section_threshold ;
 scalar_t__ stub1 (scalar_t__) ;
 TYPE_1__ targetm ;

__attribute__((used)) static enum mips_symbol_type
mips_classify_symbol (rtx x)
{
  if (GET_CODE (x) == LABEL_REF)
    {
      if (TARGET_MIPS16)
 return SYMBOL_CONSTANT_POOL;
      if (TARGET_ABICALLS && !TARGET_ABSOLUTE_ABICALLS)
 return SYMBOL_GOT_LOCAL;
      return SYMBOL_GENERAL;
    }

  gcc_assert (GET_CODE (x) == SYMBOL_REF);

  if (SYMBOL_REF_TLS_MODEL (x))
    return SYMBOL_TLS;

  if (CONSTANT_POOL_ADDRESS_P (x))
    {
      if (TARGET_MIPS16)
 return SYMBOL_CONSTANT_POOL;

      if (GET_MODE_SIZE (get_pool_mode (x)) <= mips_section_threshold)
 return SYMBOL_SMALL_DATA;
    }



  if (SYMBOL_REF_SMALL_P (x)
      && !SYMBOL_REF_WEAK (x))
    return SYMBOL_SMALL_DATA;

  if (TARGET_ABICALLS)
    {
      if (SYMBOL_REF_DECL (x) == 0)
 {
   if (!SYMBOL_REF_LOCAL_P (x))
     return SYMBOL_GOT_GLOBAL;
 }
      else
 {
   if (DECL_P (SYMBOL_REF_DECL (x))
       && TREE_PUBLIC (SYMBOL_REF_DECL (x))
       && !(TARGET_ABSOLUTE_ABICALLS
     && targetm.binds_local_p (SYMBOL_REF_DECL (x))))
     return SYMBOL_GOT_GLOBAL;
 }

      if (!TARGET_ABSOLUTE_ABICALLS)
 return SYMBOL_GOT_LOCAL;
    }

  return SYMBOL_GENERAL;
}
