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
struct rtx_iv {int extend_mode; scalar_t__ extend; void* mult; void* delta; void* step; void* base; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MULT ; 
 scalar_t__ UNKNOWN ; 
 scalar_t__ VOIDmode ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2 (struct rtx_iv *iv, rtx mby)
{
  enum machine_mode mode = iv->extend_mode;

  if (FUNC0 (mby) != VOIDmode
      && FUNC0 (mby) != mode)
    return false;

  if (iv->extend == UNKNOWN)
    {
      iv->base = FUNC1 (MULT, mode, iv->base, mby);
      iv->step = FUNC1 (MULT, mode, iv->step, mby);
    }
  else
    {
      iv->delta = FUNC1 (MULT, mode, iv->delta, mby);
      iv->mult = FUNC1 (MULT, mode, iv->mult, mby);
    }

  return true;
}