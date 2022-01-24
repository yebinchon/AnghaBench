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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static int
FUNC1 (CORE_ADDR pc, char *name)
{
  /* UnixWare uses _sigacthandler.  The origin of the other symbols is
     currently unknown.  */
  return (name && (FUNC0 ("_sigreturn", name) == 0
		   || FUNC0 ("_sigacthandler", name) == 0
		   || FUNC0 ("sigvechandler", name) == 0));
}