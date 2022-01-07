
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_pool {int insns; } ;
typedef int rtx ;


 int INSN_UID (int ) ;
 int bitmap_set_bit (int ,int ) ;

__attribute__((used)) static void
s390_add_pool_insn (struct constant_pool *pool, rtx insn)
{
  bitmap_set_bit (pool->insns, INSN_UID (insn));
}
