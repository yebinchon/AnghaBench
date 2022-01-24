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
typedef  int /*<<< orphan*/  tree ;
typedef  enum escape_t { ____Placeholder_escape_t } escape_t ;

/* Variables and functions */
 int EXPOSED_PARAMETER ; 
 int FULL_ESCAPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void 
FUNC3 (tree type, enum escape_t escape_status)
{
  if (!type) return;
  if (FUNC1 (type) >= 0)
    {
      if ((escape_status == EXPOSED_PARAMETER)
	  && FUNC0 (type))
	/* EXPOSED_PARAMETERs are only structs or unions are passed by
	   value.  Anything passed by reference to an external
	   function fully exposes the type.  */
	FUNC2 (type, FULL_ESCAPE);
      else
	FUNC2 (type, escape_status);
    }
}