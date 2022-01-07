
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iv_to_split {int insn; } ;
typedef int hashval_t ;


 int INSN_UID (int ) ;

__attribute__((used)) static hashval_t
si_info_hash (const void *ivts)
{
  return (hashval_t) INSN_UID (((struct iv_to_split *) ivts)->insn);
}
