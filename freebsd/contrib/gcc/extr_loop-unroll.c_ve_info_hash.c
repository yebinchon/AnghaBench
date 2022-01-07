
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var_to_expand {int insn; } ;
typedef int hashval_t ;


 int INSN_UID (int ) ;

__attribute__((used)) static hashval_t
ve_info_hash (const void *ves)
{
  return (hashval_t) INSN_UID (((struct var_to_expand *) ves)->insn);
}
