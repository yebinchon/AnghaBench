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
 scalar_t__ HAVE_32BIT_GPRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (int dest, int source)
{
  FUNC0 (NULL, HAVE_32BIT_GPRS ? "addu" : "daddu", "d,v,t",
	       dest, source, 0);
}