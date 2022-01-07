
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ bfd_boolean ;
struct TYPE_4__ {int instruction; void* error; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; scalar_t__ writeback; scalar_t__ postind; scalar_t__ preind; scalar_t__ isreg; } ;


 int LOAD_BIT ;
 int PRE_INDEX ;
 int WRITE_BACK ;
 void* _ (char*) ;
 int as_warn (void*) ;
 int assert (scalar_t__) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
encode_arm_addr_mode_common (int i, bfd_boolean is_t)
{
  assert (inst.operands[i].isreg);
  inst.instruction |= inst.operands[i].reg << 16;

  if (inst.operands[i].preind)
    {
      if (is_t)
 {
   inst.error = _("instruction does not accept preindexed addressing");
   return;
 }
      inst.instruction |= PRE_INDEX;
      if (inst.operands[i].writeback)
 inst.instruction |= WRITE_BACK;

    }
  else if (inst.operands[i].postind)
    {
      assert (inst.operands[i].writeback);
      if (is_t)
 inst.instruction |= WRITE_BACK;
    }
  else
    {
      inst.error = _("instruction does not accept unindexed addressing");
      return;
    }

  if (((inst.instruction & WRITE_BACK) || !(inst.instruction & PRE_INDEX))
      && (((inst.instruction & 0x000f0000) >> 16)
   == ((inst.instruction & 0x0000f000) >> 12)))
    as_warn ((inst.instruction & LOAD_BIT)
      ? _("destination register same as write-back base")
      : _("source register same as write-back base"));
}
