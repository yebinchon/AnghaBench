
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_P (int ) ;
 int DECL_UID (int ) ;
 int bitmap_bit_p (int ,int ) ;
 int gcc_assert (int ) ;
 int syms_to_rename ;

__attribute__((used)) static inline bool
symbol_marked_for_renaming (tree sym)
{
  gcc_assert (DECL_P (sym));
  return bitmap_bit_p (syms_to_rename, DECL_UID (sym));
}
