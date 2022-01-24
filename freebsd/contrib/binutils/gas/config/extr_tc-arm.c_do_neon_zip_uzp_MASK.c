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
struct neon_type_el {int size; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_2__ {int /*<<< orphan*/  instruction; } ;

/* Variables and functions */
 int NS_DD ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQ ; 
 int N_16 ; 
 int N_32 ; 
 int N_8 ; 
 int /*<<< orphan*/  N_EQK ; 
 int N_KEY ; 
 int /*<<< orphan*/  N_MNEM_vtrn ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ inst ; 
 struct neon_type_el FUNC1 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  enum neon_shape rs = FUNC3 (NS_DD, NS_QQ, NS_NULL);
  struct neon_type_el et = FUNC1 (2, rs,
    N_EQK, N_8 | N_16 | N_32 | N_KEY);
  if (rs == NS_DD && et.size == 32)
    {
      /* Special case: encode as VTRN.32 <Dd>, <Dm>.  */
      inst.instruction = N_MNEM_vtrn;
      FUNC0 ();
      return;
    }
  FUNC4 (FUNC2 (rs), 1, et.size);
}