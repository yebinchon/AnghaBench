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
struct neon_type_el {int /*<<< orphan*/  size; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int /*<<< orphan*/  instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ isscalar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_DDD ; 
 int /*<<< orphan*/  NS_DDS ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQQ ; 
 int /*<<< orphan*/  NS_QQS ; 
 int /*<<< orphan*/  N_EQK ; 
 int N_KEY ; 
 int N_S16 ; 
 int N_S32 ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct neon_type_el,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  if (inst.operands[2].isscalar)
    {
      enum neon_shape rs = FUNC5 (NS_DDS, NS_QQS, NS_NULL);
      struct neon_type_el et = FUNC2 (3, rs,
        N_EQK, N_EQK, N_S16 | N_S32 | N_KEY);
      inst.instruction = FUNC1 (inst.instruction);
      FUNC3 (et, FUNC4 (rs));
    }
  else
    {
      enum neon_shape rs = FUNC5 (NS_DDD, NS_QQQ, NS_NULL);
      struct neon_type_el et = FUNC2 (3, rs,
        N_EQK, N_EQK, N_S16 | N_S32 | N_KEY);
      inst.instruction = FUNC0 (inst.instruction);
      /* The U bit (rounding) comes from bit mask.  */
      FUNC6 (FUNC4 (rs), 0, et.size);
    }
}