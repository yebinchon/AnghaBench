#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct neon_type_el {int size; scalar_t__ type; } ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int immisalign; } ;

/* Variables and functions */
 int FAIL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  NS_NULL ; 
 scalar_t__ NT_invtype ; 
 int N_16 ; 
 int N_32 ; 
 int N_8 ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 
 int FUNC5 (int,int,int*,int,int,int,int,int,...) ; 
 struct neon_type_el FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  struct neon_type_el et = FUNC6 (1, NS_NULL, N_8 | N_16 | N_32);
  int align_good, do_align = 0;
  int logsize = FUNC7 (et.size);
  int align = inst.operands[1].imm >> 8;
  int n = (inst.instruction >> 8) & 3;
  int max_el = 64 / et.size;
  
  if (et.type == NT_invtype)
    return;
  
  FUNC4 (FUNC1 (inst.operands[0].imm) != n + 1,
              FUNC3("bad list length"));
  FUNC4 (FUNC0 (inst.operands[0].imm) >= max_el,
              FUNC3("scalar index out of range"));
  FUNC4 (n != 0 && FUNC2 (inst.operands[0].imm) == 2
              && et.size == 8,
              FUNC3("stride of 2 unavailable when element size is 8"));
  
  switch (n)
    {
    case 0:  /* VLD1 / VST1.  */
      align_good = FUNC5 (et.size, align, &do_align, 16, 16,
                                       32, 32, -1);
      if (align_good == FAIL)
        return;
      if (do_align)
        {
          unsigned alignbits = 0;
          switch (et.size)
            {
            case 16: alignbits = 0x1; break;
            case 32: alignbits = 0x3; break;
            default: ;
            }
          inst.instruction |= alignbits << 4;
        }
      break;

    case 1:  /* VLD2 / VST2.  */
      align_good = FUNC5 (et.size, align, &do_align, 8, 16, 16, 32,
                                       32, 64, -1);
      if (align_good == FAIL)
        return;
      if (do_align)
        inst.instruction |= 1 << 4;
      break;

    case 2:  /* VLD3 / VST3.  */
      FUNC4 (inst.operands[1].immisalign,
                  FUNC3("can't use alignment with this instruction"));
      break;

    case 3:  /* VLD4 / VST4.  */
      align_good = FUNC5 (et.size, align, &do_align, 8, 32,
                                       16, 64, 32, 64, 32, 128, -1);
      if (align_good == FAIL)
        return;
      if (do_align)
        {
          unsigned alignbits = 0;
          switch (et.size)
            {
            case 8:  alignbits = 0x1; break;
            case 16: alignbits = 0x1; break;
            case 32: alignbits = (align == 64) ? 0x1 : 0x2; break;
            default: ;
            }
          inst.instruction |= alignbits << 4;
        }
      break;

    default: ;
    }

  /* Reg stride of 2 is encoded in bit 5 when size==16, bit 6 when size==32.  */
  if (n != 0 && FUNC2 (inst.operands[0].imm) == 2)
    inst.instruction |= 1 << (4 + logsize);
      
  inst.instruction |= FUNC0 (inst.operands[0].imm) << (logsize + 5);
  inst.instruction |= logsize << 10;
}