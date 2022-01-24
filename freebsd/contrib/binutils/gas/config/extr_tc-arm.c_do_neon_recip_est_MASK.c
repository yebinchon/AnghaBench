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
struct neon_type_el {scalar_t__ type; int /*<<< orphan*/  size; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_2__ {int instruction; } ;

/* Variables and functions */
 int /*<<< orphan*/  NS_DD ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQ ; 
 scalar_t__ NT_float ; 
 int N_EQK ; 
 int N_F32 ; 
 int N_FLT ; 
 int N_KEY ; 
 int N_U32 ; 
 TYPE_1__ inst ; 
 struct neon_type_el FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  enum neon_shape rs = FUNC2 (NS_DD, NS_QQ, NS_NULL);
  struct neon_type_el et = FUNC0 (2, rs,
    N_EQK | N_FLT, N_F32 | N_U32 | N_KEY);
  inst.instruction |= (et.type == NT_float) << 8;
  FUNC3 (FUNC1 (rs), 1, et.size);
}