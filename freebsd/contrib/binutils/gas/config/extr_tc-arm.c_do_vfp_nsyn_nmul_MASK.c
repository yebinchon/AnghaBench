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
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_2__ {int /*<<< orphan*/  instruction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_DDD ; 
 int NS_FFF ; 
 int /*<<< orphan*/  NS_NULL ; 
 int N_EQK ; 
 int N_F32 ; 
 int N_F64 ; 
 int N_KEY ; 
 int N_VFP ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ inst ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  enum neon_shape rs = FUNC6 (NS_FFF, NS_DDD, NS_NULL);
  FUNC5 (3, rs, N_EQK | N_VFP, N_EQK | N_VFP,
    N_F32 | N_F64 | N_KEY | N_VFP);
  
  if (rs == NS_FFF)
    {
      inst.instruction = FUNC1 (inst.instruction);
      FUNC4 ();
    }
  else
    {
      inst.instruction = FUNC0 (inst.instruction);
      FUNC3 ();
    }
  FUNC2 ();
}