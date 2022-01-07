
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_P (int ) ;
 int DECL_UID (int ) ;
 scalar_t__ bitmap_bit_p (int ,int ) ;
 int sra_candidates ;

__attribute__((used)) static bool
is_sra_candidate_decl (tree decl)
{
  return DECL_P (decl) && bitmap_bit_p (sra_candidates, DECL_UID (decl));
}
