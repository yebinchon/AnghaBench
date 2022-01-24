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
typedef  int /*<<< orphan*/  UDItype ;
typedef  int /*<<< orphan*/  SFtype ;
typedef  int /*<<< orphan*/  DItype ;

/* Variables and functions */
 int /*<<< orphan*/  A ; 
 int /*<<< orphan*/  DI_BITS ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_HANDLE_EXCEPTIONS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

DItype FUNC3(SFtype a)
{
  FP_DECL_EX;
  FUNC0(A);
  UDItype r;

  FUNC2(A, a);
  FUNC1(r, A, DI_BITS, 1);
  FP_HANDLE_EXCEPTIONS;

  return r;
}