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
struct neon_type_el {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  NS_QQD ; 
 int N_DBL ; 
 int N_EQK ; 
 int N_KEY ; 
 int N_SU_32 ; 
 struct neon_type_el FUNC0 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct neon_type_el,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  struct neon_type_el et = FUNC0 (3, NS_QQD,
    N_EQK | N_DBL, N_EQK | N_DBL, N_SU_32 | N_KEY);
  FUNC1 (et, et.size);
}