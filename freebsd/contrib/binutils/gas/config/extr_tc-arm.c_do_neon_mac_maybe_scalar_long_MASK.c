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

/* Variables and functions */
 int N_S16 ; 
 int N_S32 ; 
 int /*<<< orphan*/  N_SU_32 ; 
 int N_U16 ; 
 int N_U32 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  FUNC0 (N_S16 | N_S32 | N_U16 | N_U32, N_SU_32);
}