
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_pool {int pool_insn; struct constant* execute; int label; struct constant** constants; } ;
struct constant {int value; int label; struct constant* next; } ;
typedef int rtx ;


 scalar_t__ CONST ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int ) ;
 int INSN_ADDRESSES_NEW (int ,int) ;
 int NR_C_MODES ;
 int Pmode ;
 scalar_t__ TARGET_CPU_ZARCH ;
 scalar_t__ UNSPEC ;
 int UNSPECV_POOL_ENTRY ;
 scalar_t__ UNSPEC_LTREL_OFFSET ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 scalar_t__ XINT (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 int XVECLEN (int ,int ) ;
 int * constant_modes ;
 int emit_barrier_after (int ) ;
 int emit_insn_after (int ,int ) ;
 int emit_label_after (int ,int ) ;
 int gen_pool_align (int ) ;
 int gen_pool_section_end () ;
 int gen_pool_section_start () ;
 int gen_rtvec (int,int ) ;
 int gen_rtx_CONST (int ,int ) ;
 int gen_rtx_LABEL_REF (int ,int ) ;
 int gen_rtx_MINUS (int ,int ,int ) ;
 int gen_rtx_UNSPEC_VOLATILE (int ,int ,int ) ;
 int remove_insn (int ) ;
 int s390_execute_target (int ) ;

__attribute__((used)) static void
s390_dump_pool (struct constant_pool *pool, bool remote_label)
{
  struct constant *c;
  rtx insn = pool->pool_insn;
  int i;


  if (TARGET_CPU_ZARCH)
    {
      insn = emit_insn_after (gen_pool_section_start (), insn);
      INSN_ADDRESSES_NEW (insn, -1);
    }


  if (TARGET_CPU_ZARCH)
    insn = emit_insn_after (gen_pool_align (GEN_INT (8)), insn);
  else
    insn = emit_insn_after (gen_pool_align (GEN_INT (4)), insn);
  INSN_ADDRESSES_NEW (insn, -1);


  if (!remote_label)
    {
      insn = emit_label_after (pool->label, insn);
      INSN_ADDRESSES_NEW (insn, -1);
    }



  for (i = 0; i < NR_C_MODES; i++)
    for (c = pool->constants[i]; c; c = c->next)
      {

 rtx value = c->value;
 if (GET_CODE (value) == CONST
     && GET_CODE (XEXP (value, 0)) == UNSPEC
     && XINT (XEXP (value, 0), 1) == UNSPEC_LTREL_OFFSET
     && XVECLEN (XEXP (value, 0), 0) == 1)
   {
     value = gen_rtx_MINUS (Pmode, XVECEXP (XEXP (value, 0), 0, 0),
       gen_rtx_LABEL_REF (VOIDmode, pool->label));
     value = gen_rtx_CONST (VOIDmode, value);
   }

 insn = emit_label_after (c->label, insn);
 INSN_ADDRESSES_NEW (insn, -1);

 value = gen_rtx_UNSPEC_VOLATILE (constant_modes[i],
      gen_rtvec (1, value),
      UNSPECV_POOL_ENTRY);
 insn = emit_insn_after (value, insn);
 INSN_ADDRESSES_NEW (insn, -1);
      }


  insn = emit_insn_after (gen_pool_align (GEN_INT (2)), insn);
  INSN_ADDRESSES_NEW (insn, -1);


  for (c = pool->execute; c; c = c->next)
    {
      insn = emit_label_after (c->label, insn);
      INSN_ADDRESSES_NEW (insn, -1);

      insn = emit_insn_after (s390_execute_target (c->value), insn);
      INSN_ADDRESSES_NEW (insn, -1);
    }


  if (TARGET_CPU_ZARCH)
    {
      insn = emit_insn_after (gen_pool_section_end (), insn);
      INSN_ADDRESSES_NEW (insn, -1);
    }

  insn = emit_barrier_after (insn);
  INSN_ADDRESSES_NEW (insn, -1);


  remove_insn (pool->pool_insn);
}
