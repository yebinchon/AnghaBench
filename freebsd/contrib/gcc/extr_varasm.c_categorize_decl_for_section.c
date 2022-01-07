
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef enum section_category { ____Placeholder_section_category } section_category ;
struct TYPE_3__ {int (* reloc_rw_mask ) () ;} ;
struct TYPE_4__ {scalar_t__ have_srodata_section; scalar_t__ (* in_small_data_p ) (int ) ;TYPE_1__ asm_out; } ;


 scalar_t__ CONSTRUCTOR ;
 int DECL_INITIAL (int ) ;
 scalar_t__ DECL_THREAD_LOCAL_P (int ) ;
 scalar_t__ FUNCTION_DECL ;
 int SECCAT_BSS ;
 int SECCAT_DATA ;
 int SECCAT_DATA_REL ;
 int SECCAT_DATA_REL_LOCAL ;
 int SECCAT_DATA_REL_RO ;
 int SECCAT_DATA_REL_RO_LOCAL ;
 int SECCAT_RODATA ;
 int SECCAT_RODATA_MERGE_CONST ;
 int SECCAT_RODATA_MERGE_STR ;
 int SECCAT_RODATA_MERGE_STR_INIT ;
 int SECCAT_SBSS ;
 int SECCAT_SDATA ;
 int SECCAT_SRODATA ;
 int SECCAT_TBSS ;
 int SECCAT_TDATA ;
 int SECCAT_TEXT ;
 scalar_t__ STRING_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CONSTANT (int ) ;
 int TREE_READONLY (int ) ;
 scalar_t__ TREE_SIDE_EFFECTS (int ) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ bss_initializer_p (int ) ;
 int flag_merge_constants ;
 scalar_t__ flag_mudflap ;
 scalar_t__ flag_zero_initialized_in_bss ;
 scalar_t__ initializer_zerop (int ) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 scalar_t__ stub4 (int ) ;
 TYPE_2__ targetm ;

enum section_category
categorize_decl_for_section (tree decl, int reloc)
{
  enum section_category ret;

  if (TREE_CODE (decl) == FUNCTION_DECL)
    return SECCAT_TEXT;
  else if (TREE_CODE (decl) == STRING_CST)
    {
      if (flag_mudflap)
        return SECCAT_RODATA;
      else
 return SECCAT_RODATA_MERGE_STR;
    }
  else if (TREE_CODE (decl) == VAR_DECL)
    {
      if (bss_initializer_p (decl))
 ret = SECCAT_BSS;
      else if (! TREE_READONLY (decl)
        || TREE_SIDE_EFFECTS (decl)
        || ! TREE_CONSTANT (DECL_INITIAL (decl)))
 {




   if (reloc & targetm.asm_out.reloc_rw_mask ())
     ret = reloc == 1 ? SECCAT_DATA_REL_LOCAL : SECCAT_DATA_REL;
   else
     ret = SECCAT_DATA;
 }
      else if (reloc & targetm.asm_out.reloc_rw_mask ())
 ret = reloc == 1 ? SECCAT_DATA_REL_RO_LOCAL : SECCAT_DATA_REL_RO;
      else if (reloc || flag_merge_constants < 2)



 ret = SECCAT_RODATA;
      else if (TREE_CODE (DECL_INITIAL (decl)) == STRING_CST)
 ret = SECCAT_RODATA_MERGE_STR_INIT;
      else
 ret = SECCAT_RODATA_MERGE_CONST;
    }
  else if (TREE_CODE (decl) == CONSTRUCTOR)
    {
      if ((reloc & targetm.asm_out.reloc_rw_mask ())
   || TREE_SIDE_EFFECTS (decl)
   || ! TREE_CONSTANT (decl))
 ret = SECCAT_DATA;
      else
 ret = SECCAT_RODATA;
    }
  else
    ret = SECCAT_RODATA;


  if (TREE_CODE (decl) == VAR_DECL && DECL_THREAD_LOCAL_P (decl))
    {


      if (ret == SECCAT_BSS
   || (flag_zero_initialized_in_bss
       && initializer_zerop (DECL_INITIAL (decl))))
 ret = SECCAT_TBSS;
      else
 ret = SECCAT_TDATA;
    }


  else if (targetm.in_small_data_p (decl))
    {
      if (ret == SECCAT_BSS)
 ret = SECCAT_SBSS;
      else if (targetm.have_srodata_section && ret == SECCAT_RODATA)
 ret = SECCAT_SRODATA;
      else
 ret = SECCAT_SDATA;
    }

  return ret;
}
