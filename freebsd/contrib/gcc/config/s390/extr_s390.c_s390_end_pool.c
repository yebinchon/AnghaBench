
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_pool {int pool_insn; scalar_t__ size; } ;
typedef int rtx ;


 int GEN_INT (scalar_t__) ;
 int INSN_ADDRESSES_NEW (int ,int) ;
 int emit_insn_after (int ,int ) ;
 int gen_pool (int ) ;
 int get_last_insn () ;

__attribute__((used)) static void
s390_end_pool (struct constant_pool *pool, rtx insn)
{
  rtx pool_size = GEN_INT (pool->size + 8 );

  if (!insn)
    insn = get_last_insn ();

  pool->pool_insn = emit_insn_after (gen_pool (pool_size), insn);
  INSN_ADDRESSES_NEW (pool->pool_insn, -1);
}
