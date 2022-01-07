
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 scalar_t__ DECL_EXTERNAL (int ) ;
 int DECL_RTL (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_STATIC (int ) ;
 scalar_t__ VAR_DECL ;
 int XEXP (int ,int ) ;
 int default_encode_section_info (int ,int ,int) ;
 int ia64_encode_addr_area (int ,int ) ;

__attribute__((used)) static void
ia64_encode_section_info (tree decl, rtx rtl, int first)
{
  default_encode_section_info (decl, rtl, first);


  if (TREE_CODE (decl) == VAR_DECL
      && GET_CODE (DECL_RTL (decl)) == MEM
      && GET_CODE (XEXP (DECL_RTL (decl), 0)) == SYMBOL_REF
      && (TREE_STATIC (decl) || DECL_EXTERNAL (decl)))
    ia64_encode_addr_area (decl, XEXP (rtl, 0));
}
