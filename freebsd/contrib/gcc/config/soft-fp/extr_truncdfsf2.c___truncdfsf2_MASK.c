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
typedef  int /*<<< orphan*/  SFtype ;
typedef  int /*<<< orphan*/  DFtype ;

/* Variables and functions */
 int /*<<< orphan*/  A ; 
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_HANDLE_EXCEPTIONS ; 
 int /*<<< orphan*/  FP_INIT_ROUNDMODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  S ; 

SFtype FUNC5(DFtype a)
{
  FP_DECL_EX;
  FUNC0(A);
  FUNC1(R);
  SFtype r;

  FP_INIT_ROUNDMODE;
  FUNC4(A, a);
#if _FP_W_TYPE_SIZE < _FP_FRACBITS_D
  FP_TRUNC(S,D,1,2,R,A);
#else
  FUNC3(S,D,1,1,R,A);
#endif
  FUNC2(r, R);
  FP_HANDLE_EXCEPTIONS;

  return r;
}