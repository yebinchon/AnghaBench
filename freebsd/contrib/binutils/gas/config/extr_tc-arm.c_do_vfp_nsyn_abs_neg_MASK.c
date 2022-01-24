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
struct TYPE_2__ {int instruction; } ;

/* Variables and functions */
 int NS_FF ; 
 int N_EQK ; 
 int N_F32 ; 
 int N_F64 ; 
 int N_KEY ; 
 int N_VFP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ inst ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 

__attribute__((used)) static void
FUNC2 (enum neon_shape rs)
{
  int is_neg = (inst.instruction & 0x80) != 0;
  FUNC1 (2, rs, N_EQK | N_VFP, N_F32 | N_F64 | N_VFP | N_KEY);

  if (rs == NS_FF)
    {
      if (is_neg)
        FUNC0 ("fnegs");
      else
        FUNC0 ("fabss");
    }
  else
    {
      if (is_neg)
        FUNC0 ("fnegd");
      else
        FUNC0 ("fabsd");
    }
}