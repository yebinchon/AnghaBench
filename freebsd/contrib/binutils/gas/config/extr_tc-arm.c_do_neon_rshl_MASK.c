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
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  NS_DDD ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQQ ; 
 scalar_t__ NT_unsigned ; 
 int /*<<< orphan*/  N_EQK ; 
 int N_KEY ; 
 int N_SU_ALL ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  enum neon_shape rs = FUNC2 (NS_DDD, NS_QQQ, NS_NULL);
  struct neon_type_el et = FUNC0 (3, rs,
    N_EQK, N_EQK, N_SU_ALL | N_KEY);
  unsigned int tmp;

  tmp = inst.operands[2].reg;
  inst.operands[2].reg = inst.operands[1].reg;
  inst.operands[1].reg = tmp;
  FUNC3 (FUNC1 (rs), et.type == NT_unsigned, et.size);
}