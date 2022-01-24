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
typedef  scalar_t__ tree ;
struct TYPE_2__ {int /*<<< orphan*/  (* binds_local_p ) (scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TARGET_64BIT ; 
 scalar_t__ TARGET_TPF_PROFILING ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ flag_pic ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__ targetm ; 

__attribute__((used)) static bool
FUNC3 (tree decl, tree exp)
{
  /* The TPF epilogue uses register 1.  */
  if (TARGET_TPF_PROFILING)
    return false;

  /* The 31 bit PLT code uses register 12 (GOT pointer - caller saved)
     which would have to be restored before the sibcall.  */
  if (!TARGET_64BIT && flag_pic && decl && !targetm.binds_local_p (decl))
    return false;

  /* Register 6 on s390 is available as an argument register but unfortunately
     "caller saved". This makes functions needing this register for arguments
     not suitable for sibcalls.  */
  if (FUNC0 (exp, 1)
      && FUNC1 (FUNC0 (exp, 1)))
      return false;

  return true;
}