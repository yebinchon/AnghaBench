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
typedef  int /*<<< orphan*/  TFtype ;
typedef  int /*<<< orphan*/  DFtype ;

/* Variables and functions */
 int /*<<< orphan*/  A ; 
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_HANDLE_EXCEPTIONS ; 
 int /*<<< orphan*/  FP_INIT_ROUNDMODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q ; 
 int /*<<< orphan*/  R ; 

TFtype FUNC5(DFtype a)
{
  FP_DECL_EX;
  FUNC0(A);
  FUNC1(R);
  TFtype r;

  FP_INIT_ROUNDMODE;
  FUNC4(A, a);
#if (2 * _FP_W_TYPE_SIZE) < _FP_FRACBITS_Q
  FP_EXTEND(Q,D,4,2,R,A);
#else
  FUNC2(Q,D,2,1,R,A);
#endif
  FUNC3(r, R);
  FP_HANDLE_EXCEPTIONS;

  return r;
}