#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;

/* Variables and functions */
 int /*<<< orphan*/  NS_DD ; 
 int NS_FF ; 
 int /*<<< orphan*/  NS_NULL ; 
 int N_EQK ; 
 int N_F32 ; 
 int N_F64 ; 
 int N_KEY ; 
 int N_VFP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  enum neon_shape rs = FUNC2 (NS_FF, NS_DD, NS_NULL);
  FUNC1 (2, rs, N_EQK | N_VFP, N_F32 | N_F64 | N_KEY | N_VFP);
      
  if (rs == NS_FF)
    FUNC0 ("fsqrts");
  else
    FUNC0 ("fsqrtd");
}