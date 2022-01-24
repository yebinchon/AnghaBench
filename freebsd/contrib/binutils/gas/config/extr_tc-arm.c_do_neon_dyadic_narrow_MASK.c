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
struct neon_type_el {int size; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  NS_QDD ; 
 int /*<<< orphan*/  NT_integer ; 
 int N_DBL ; 
 int N_EQK ; 
 int N_I16 ; 
 int N_I32 ; 
 int N_I64 ; 
 int N_KEY ; 
 struct neon_type_el FUNC0 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct neon_type_el,int) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  struct neon_type_el et = FUNC0 (3, NS_QDD,
    N_EQK | N_DBL, N_EQK, N_I16 | N_I32 | N_I64 | N_KEY);
  /* Operand sign is unimportant, and the U bit is part of the opcode,
     so force the operand type to integer.  */
  et.type = NT_integer;
  FUNC1 (et, et.size / 2);
}