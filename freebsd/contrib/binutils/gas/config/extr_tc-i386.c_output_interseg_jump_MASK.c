#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ valueT ;
typedef  scalar_t__ offsetT ;
struct TYPE_11__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
struct TYPE_10__ {int fr_literal; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  base_opcode; } ;
struct TYPE_9__ {scalar_t__ prefixes; TYPE_2__* op; TYPE_1__ tm; int /*<<< orphan*/ * reloc; int /*<<< orphan*/ * prefix; } ;
struct TYPE_8__ {TYPE_6__* imms; } ;

/* Variables and functions */
 int CODE16 ; 
 scalar_t__ CODE_16BIT ; 
 size_t DATA_PREFIX ; 
 int /*<<< orphan*/  DATA_PREFIX_OPCODE ; 
 scalar_t__ O_constant ; 
 size_t REX_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,int,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_code ; 
 char* FUNC6 (int) ; 
 TYPE_4__* frag_now ; 
 TYPE_3__ i ; 
 int /*<<< orphan*/  intel_syntax ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  char *p;
  int size;
  int prefix;
  int code16;

  code16 = 0;
  if (flag_code == CODE_16BIT)
    code16 = CODE16;

  prefix = 0;
  if (i.prefix[DATA_PREFIX] != 0)
    {
      prefix = 1;
      i.prefixes -= 1;
      code16 ^= CODE16;
    }
  if (i.prefix[REX_PREFIX] != 0)
    {
      prefix++;
      i.prefixes -= 1;
    }

  size = 4;
  if (code16)
    size = 2;

  if (i.prefixes != 0 && !intel_syntax)
    FUNC2 (FUNC0("skipping prefixes on this instruction"));

  /* 1 opcode; 2 segment; offset  */
  p = FUNC6 (prefix + 1 + 2 + size);

  if (i.prefix[DATA_PREFIX] != 0)
    *p++ = DATA_PREFIX_OPCODE;

  if (i.prefix[REX_PREFIX] != 0)
    *p++ = i.prefix[REX_PREFIX];

  *p++ = i.tm.base_opcode;
  if (i.op[1].imms->X_op == O_constant)
    {
      offsetT n = i.op[1].imms->X_add_number;

      if (size == 2
	  && !FUNC4 (n)
	  && !FUNC3 (n))
	{
	  FUNC1 (FUNC0("16-bit jump out of range"));
	  return;
	}
      FUNC7 (p, n, size);
    }
  else
    FUNC5 (frag_now, p - frag_now->fr_literal, size,
		 i.op[1].imms, 0, FUNC8 (size, 0, 0, i.reloc[1]));
  if (i.op[0].imms->X_op != O_constant)
    FUNC1 (FUNC0("can't handle non absolute segment in `%s'"),
	    i.tm.name);
  FUNC7 (p + size, (valueT) i.op[0].imms->X_add_number, 2);
}