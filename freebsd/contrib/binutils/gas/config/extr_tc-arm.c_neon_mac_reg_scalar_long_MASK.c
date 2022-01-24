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
struct neon_type_el {scalar_t__ type; int /*<<< orphan*/  size; } ;
struct TYPE_4__ {int /*<<< orphan*/  instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ isscalar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_QDD ; 
 int /*<<< orphan*/  NS_QDS ; 
 scalar_t__ NT_unsigned ; 
 int N_DBL ; 
 int N_EQK ; 
 unsigned int N_KEY ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC2 (int,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct neon_type_el,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct neon_type_el,int) ; 

__attribute__((used)) static void
FUNC5 (unsigned regtypes, unsigned scalartypes)
{
  if (inst.operands[2].isscalar)
    {
      struct neon_type_el et = FUNC2 (3, NS_QDS,
        N_EQK | N_DBL, N_EQK, regtypes | N_KEY);
      inst.instruction = FUNC1 (inst.instruction);
      FUNC4 (et, et.type == NT_unsigned);
    }
  else
    {
      struct neon_type_el et = FUNC2 (3, NS_QDD,
        N_EQK | N_DBL, N_EQK, scalartypes | N_KEY);
      inst.instruction = FUNC0 (inst.instruction);
      FUNC3 (et, et.size);
    }
}