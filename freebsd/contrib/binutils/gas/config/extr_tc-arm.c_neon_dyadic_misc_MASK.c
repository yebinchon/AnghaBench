#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct neon_type_el {scalar_t__ type; int size; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
typedef  enum neon_el_type { ____Placeholder_neon_el_type } neon_el_type ;
struct TYPE_2__ {int /*<<< orphan*/  instruction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_DDD ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQQ ; 
 scalar_t__ NT_float ; 
 unsigned int N_EQK ; 
 unsigned int N_KEY ; 
 TYPE_1__ inst ; 
 struct neon_type_el FUNC2 (int,int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC6 (enum neon_el_type ubit_meaning, unsigned types,
                  unsigned destbits)
{
  enum neon_shape rs = FUNC4 (NS_DDD, NS_QQQ, NS_NULL);
  struct neon_type_el et = FUNC2 (3, rs, N_EQK | destbits, N_EQK,
                                            types | N_KEY);
  if (et.type == NT_float)
    {
      inst.instruction = FUNC0 (inst.instruction);
      FUNC5 (FUNC3 (rs), 0, -1);
    }
  else
    {
      inst.instruction = FUNC1 (inst.instruction);
      FUNC5 (FUNC3 (rs), et.type == ubit_meaning, et.size);
    }
}